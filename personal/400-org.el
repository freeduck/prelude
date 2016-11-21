;;; 400-org.el --- Configure org                     -*- lexical-binding: t; -*-

;; Copyright (C) 2015  Kristian Nygaard Jensen

;; Author: Kristian Nygaard Jensen <kristian@kristian-VirtualBox>
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

;; Personal configuration of org

;;; Code:

(let ((notes-file "~/org/notes.org"))
  (setq org-agenda-files (list notes-file))
  (setq org-default-notes-file notes-file))

(define-key global-map "\C-cc" 'org-capture)
;; Be sure to add your main Org Mode file to your agenda list. You can do so by going to the file and typing C-c [



(setq org-todo-keywords
      '((sequence "TODO(t)" "IN-PROGRESS(i!)" "PAUSE(p@/i)" "|" "DONE(d)" "FORWARD(f)")
        (sequence "|" "CANCELED(c@)")))

(setq org-agenda-todo-list-sublevels nil)

(setq org-refile-targets '((org-agenda-files . (:maxlevel . 6))))

(provide '400-org)
;;; 400-org.el ends here
