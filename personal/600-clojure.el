;;; 600-clojure.el --- Clojurescript repl            -*- lexical-binding: t; -*-

;; Copyright (C) 2016  Kristian Nygaard Jensen

;; Author: Kristian Nygaard Jensen <knj@localhost.localdomain>
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

;; Functions for starting cljs repl

;;; Code:

(defun cljs-node-repl ()
  (interactive)
  (run-clojure (concat "cljs-repl" " "  (projectile-project-root))))



(add-hook 'clojure-mode-hook #'inf-clojure-minor-mode)
(add-hook 'clojure-mode-hook #'eldoc-mode)
(add-hook 'inf-clojure-mode-hook #'eldoc-mode)

(provide '600-clojure)
;;; 600-clojure.el ends here
