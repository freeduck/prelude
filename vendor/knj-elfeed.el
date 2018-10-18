;;; knj-elfeed.el --- Configure elfeed               -*- lexical-binding: t; -*-

;; Copyright (C) 2018  Kristian Nygaard Jensen

;; Author: Kristian Nygaard Jensen <kristian@debian-x200.kringer.dk>
;; Keywords: news

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

;; Setting up elfeed

;;; Code:

(use-package elfeed
  :ensure t
  :bind (("C-x w" . elfeed))
  :init
  (use-package elfeed-org
    :ensure t
    :init
    (setq rmh-elfeed-org-files (list "~/org/elfeed.org"))
    :config
    (elfeed-org))
  (use-package emms
    :ensure t
    :config
    (progn
      (emms-standard)
      (emms-default-players)
      (setq emms-playlist-buffer-name "Music-EMMS")
      (setq emms-source-file-default-directory "~/Music/")))
)

(provide 'knj-elfeed)
;;; knj-elfeed.el ends here
