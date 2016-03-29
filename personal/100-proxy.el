;;; 100-proxy.el --- Define proxy settings

;; Copyright (C) 2015  Kristian Nygaard Jensen

;; Author: Kristian Nygaard Jensen <kristian@kristian-ThinkPad-X240>
;; Keywords: comm

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; If system proxy is set activate it in emacs

;;; Code:

(defun gsettings-strip-fromatting (string)
  (replace-regexp-in-string "\\`[[']";Remove '[ from beginnign
                            ""
                            (replace-regexp-in-string "[]\n']*\\'" ;remove '\n] from end
                                                      ""
                                                      string)))

(defun gsettings-get (variable)
  (gsettings-strip-fromatting (shell-command-to-string (concat "gsettings get " variable))))

(defun use-system-proxy? ()
  (and (not (or (getenv "http_proxy")
                (getenv "https_proxy")))
       (string= "manual" (gsettings-get "org.gnome.system.proxy mode"))))

(when (use-system-proxy?)
  (let ((http-proxy (concat (gsettings-get  "org.gnome.system.proxy.http host")
                            ":" (gsettings-get "org.gnome.system.proxy.http port")))
        (https-proxy (concat (gsettings-get  "org.gnome.system.proxy.https host")
                             ":" (gsettings-get "org.gnome.system.proxy.https port")))
        (no-proxy (gsettings-get "org.gnome.system.proxy ignore-hosts")))
    (message "Use proxy")
    (setenv "http_proxy" (concat "http://" http-proxy))
    (setenv "https_proxy" (concat "https://" https-proxy))
    (setenv "no_proxy" "localhost,127.0.0.1,172.0.0.1/8,.local,.mesos")
    (setenv "http_no_proxy" "localhost|10.*|172.*|192.*|*.local|*.mesos")
    (message (getenv "http_no_proxy"))
    (setq url-proxy-services
          (list (cons "no_proxy" "^\\(localhost\\|10.*\\|172.*\\|192.*\\|*.local\\|*.mesos\\)")
                (cons "http"  http-proxy)
                (cons "https"  https-proxy)))))


(provide '100-proxy)
;;; 100-proxy.el ends here
