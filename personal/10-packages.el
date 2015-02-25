;;; 10-packages.el --- Custom packages

;; Copyright (C) 2014  Kristian Nygaard Jensen

;; Author: Kristian Nygaard Jensen <kristian@kristian-ThinkPad-X1-Carbon>
;; Keywords: tools, lisp

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

;; My custom packages

;;; Code:

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)
;; ;; My packages
(setq my-packages '(nginx-mode
                    drupal-mode
                    bookmark+
                    dired+
                    dired-details+
                    icicles
                    magit-gitflow
                    cyberpunk-theme
                    wn-mode
                    window-number
                    syslog-mode))
(setq prelude-packages (append my-packages prelude-packages))

(prelude-install-packages)
(every #'require my-packages)

(defun auto-update ()
  (interactive)
  (save-excursion
    (package-refresh-contents)
    (package-list-packages)
    (package-menu-mark-upgrades)
    (package-menu-execute)
    (kill-buffer)))
(auto-update)

(setq twittering-use-master-password t)
(load-theme 'cyberpunk t)
(add-to-list 'auto-mode-alist '("\\.boot\\'" . clojure-mode))
(add-hook 'magit-mode-hook 'turn-on-magit-gitflow)
(provide '10-packages)

;;; 10-packages.el ends here
