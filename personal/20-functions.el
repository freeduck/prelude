;;; 20-functions.el --- My custom functions

;; Copyright (C) 2014  Kristian Nygaard Jensen

;; Author: Kristian Nygaard Jensen <freeduck@member.fsf.org>
;; Keywords: lisp, convenience

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

;; Utility functions

;;; Code:

(defun insert-logger ()
  "Log symbol at point."
  (interactive)
  (let ((word-of-intrest (current-word)))
    (end-of-line)
    (newline)
    (indent-for-tab-command)
    (insert (format "(clojure.pprint/pprint %s) ;REMOVE THIS DEBUGGING" word-of-intrest))))

(defun dead ()
  (interactive)
  (global-set-key [S-dead-grave] "`")
  (global-set-key [dead-tilde] "~"))


(provide '20-functions)
;;; 20-functions.el ends here
