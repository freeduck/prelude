;;; 200-packages.el --- Extra packages

;; Copyright (C) 2015  Kristian Nygaard Jensen

;; Author: Kristian Nygaard Jensen <kristian@freeduck.dk>
;; Keywords: extensions

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

;;

;;; Code:

(setq my-packages '(nginx-mode
                    dockerfile-mode
                    groovy-mode
                    org-bullets
                    use-package
                    solarized-theme
                    cyberpunk-theme
                    intellij-theme
                    terraform-mode
                    elpy
                    ;; websocket
                    ;; request
                    ;; ein
                    ;; ein-mumamo
                    logstash-conf))
(elpy-enable)
(add-to-list 'load-path "~/memacs")
(prelude-require-packages my-packages)
;; (use-package pipenv
;;   :ensure t
;;   :hook (python-mode . pipenv-mode)
;;   :init
;;   (setq
;;    pipenv-projectile-after-switch-function
;;    #'pipenv-projectile-after-switch-extended))
(setenv "PATH" (concat "/home/kristian/.local/bin:" (getenv "PATH")))
(provide 'memacs-pipenv)
(provide '200-packages)
;;; 200-packages.el ends here
