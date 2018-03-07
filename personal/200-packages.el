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
                    ;drupal-mode
                    bookmark+
                    dired+
                    clj-refactor
                    dired-details+
                    icicles
                                        ;magit-gitflow
                    cyberpunk-theme
                                        ;wn-mode
                                        ;window-number
                    jinja2-mode
                    terraform-mode
                    logstash-conf))

(prelude-require-packages my-packages)
(provide '200-packages)
;;; 200-packages.el ends here
