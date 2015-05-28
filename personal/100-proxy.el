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
(when (not (getenv "http_proxy"))
  (if (string= "manual" (replace-regexp-in-string "[\n']*\\'" ;remove '\n from end
                                                  ""
                                                  (replace-regexp-in-string "\\`[']" ;Remove ' from beginnign
                                                                            ""
                                                                            (shell-command-to-string "gsettings get org.gnome.system.proxy mode"))))
      (progn
        (setenv "http_proxy" "http://localhost:3128")
        (setenv "https_proxy" "https://localhost:3128")
        (setenv "no_proxy" "localhost,127.0.0.1,.tdk.dk,.int.yousee.dk"))))


(provide '100-proxy)
;;; 100-proxy.el ends here
