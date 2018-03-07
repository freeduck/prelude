;;; 300-config.el --- Custom configuration

;; Copyright (C) 2015  Kristian Nygaard Jensen

;; Author: Kristian Nygaard Jensen <kristian@kristian-ThinkPad-X240>
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

;; Configurations

;;; Code:
;(add-hook 'magit-mode-hook 'turn-on-magit-gitflow)
(defun git-stamp ()
  (interactive)
  (kill-new (replace-regexp-in-string "\n$" ""
                                      (shell-command-to-string "date +%F-%H-%M-%S"))))

(require 'dired+)
(require 'dired-details+)
(require 'bookmark+)

(add-hook 'clojure-mode-hook (lambda ()
                               (clj-refactor-mode 1)
                               (cljr-add-keybindings-with-prefix "C-c C-m")))

(when (boundp 'helm-map)
  (define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)) ; rebind tab to run persistent action

(add-to-list 'load-path "/usr/share/doc/git-core-doc/contrib/emacs")
(add-to-list 'auto-mode-alist '("\\.j2\\'" . jinja2-mode))
(global-ede-mode t)
(when (not (boundp 'eshell-visual-commands))
  (setq eshell-visual-commands '()))
(add-to-list 'eshell-visual-commands "npm")
(add-to-list 'eshell-visual-commands "node")
(add-to-list 'eshell-visual-commands "make")
(add-to-list 'eshell-visual-commands "lein")
(provide '300-config)



;;(add-to-list 'eshell-visual-commands "make")

;;; 300-config.el ends here
