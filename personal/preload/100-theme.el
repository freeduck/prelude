;;; 100-theme.el --- load theme

;; Copyright (C) 2015  Kristian Nygaard Jensen

;; Author: Kristian Nygaard Jensen <kristian@kristian-ThinkPad-X240>
;; Keywords: tools

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

;; Load theme

;;; Code:
(require 'package)
(package-initialize)
(when (package-installed-p 'cyberpunk-theme)
  (setq prelude-theme 'cyberpunk))

(setq magit-last-seen-setup-instructions "1.4.0")
(setq tramp-verbose 5)
(setq projectile-mode-line nil)
(setq gtags-auto-update t)
(provide '100-theme)
;;; 100-theme.el ends here
