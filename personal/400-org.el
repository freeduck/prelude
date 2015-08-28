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

(setq org-agenda-files (list "~/org/tasks"))
(setq org-default-notes-file "~/org/notes.org")

(setq org-todo-keywords
      '((sequence "TODO(t)" "IN-PROGRESS(i!)" "PAUSE(p@/i)" "|" "DONE(d)" "FORWARD(f)")
        (sequence "|" "CANCELED(c@)")))

(setq org-agenda-todo-list-sublevels nil)

(provide '400-org)
;;; 400-org.el ends here
