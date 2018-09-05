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

;; (setq my-packages '(nginx-mode
;;                     dockerfile-mode
;;                     groovy-mode
;;                     ;; org-bullets
;;                     use-package
;;                     solarized-theme
;;                     cyberpunk-theme
;;                     intellij-theme
;;                     terraform-mode
;;                     ;; elpy
;;                     ;; websocket
;;                     ;; request
;;                     ;; ein
;;                     ;; ein-mumamo
;;                     logstash-conf))
;; (elpy-enable)
;; (add-to-list 'load-path "~/memacs")
(prelude-require-package 'use-package)
;; (prelude-require-package 'org)
;; (eval-when-compile
;;   (require 'use-package))
;; (require 'diminish)                ;; if you use :diminish
(require 'bind-key)                ;; if you use any :bind variant
(use-package pipenv
  :ensure t
;;  :hook (python-mode . pipenv-mode)
  ;; :init
  ;; (setq
  ;;  pipenv-projectile-after-switch-function
  ;;  #'pipenv-projectile-after-switch-extended)
  :config
  (unbind-key "C-c C-p a" pipenv-mode-map)
  (unbind-key "C-c C-p d" pipenv-mode-map)
  (unbind-key "C-c C-p s" pipenv-mode-map)
  (unbind-key "C-c C-p o" pipenv-mode-map)
  (unbind-key "C-c C-p i" pipenv-mode-map)
  (unbind-key "C-c C-p u" pipenv-mode-map))
(use-package ob-ipython
  :ensure t)

(use-package ox-jekyll
  :ensure t)

;; (use-package ox-jekyll-md
;;   :ensure t)

(defvar my-keys-minor-mode-map
  (let ((map (make-sparse-keymap)))
    (define-key map [(control shift return)] 'org-insert-todo-heading-respect-content)
    map)
  "my-keys-minor-mode keymap.")

(define-minor-mode my-keys-minor-mode
  "A minor mode so that my key settings override annoying major modes."
  :init-value t
  :lighter " my-keys")

(use-package my-keys-minor-mode
  :hook org-mode)
;; 9.1.14

(defun org-too-old-p ()
  (let ((v (mapcar 'string-to-number
                   (split-string (org-version)
                                 "[.]"))))
    (not (and (>= (nth 0 v) 9)
              (>= (nth 1 v) 1)
              (>= (nth 2 v) 14)))))

(use-package auto-package-update
  :ensure t
  :config
  (setq auto-package-update-delete-old-versions t)
  (setq auto-package-update-hide-results t)
  (auto-package-update-maybe))

(use-package org
  :pin melpa
  :ensure t
  :config
  (if (org-too-old-p)
      (progn
        (package-install 'org nil)
        (package-install-selected-packages)))
  (add-hook 'org-babel-after-execute-hook 'org-display-inline-images 'append)
  (org-babel-do-load-languages 'org-babel-load-languages
                               (append '((python . t)
                                         (ipython . t)
                                         (clojure . t)
                                         (emacs-lisp . t)
                                         (screen . t))
                                       (if (< emacs-major-version 26)
                                           '((sh . t))
                                         '((shell . t))))))

;; (use-package ob-clojure
;;   :ensure t)

(setenv "PATH" (concat "/home/kristian/.local/bin:" (getenv "PATH")))
;; (provide 'memacs-pipenv)
(provide '200-packages)
;;; 200-packages.el ends here
