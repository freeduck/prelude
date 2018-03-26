;;; 700-utils.el --- My utils                        -*- lexical-binding: t; -*-

;; Copyright (C) 2018  Kristian Nygaard Jensen

;; Author: Kristian Nygaard Jensen <kristian@debian-work-knj>
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

;;

;;; Code:

(defun control-media (command)
  (call-process "smplayer" nil nil nil "-send-action" command))

(defun media-play-pause ()
  "Play or pause"
  (interactive)
  (control-media "play_or_pause"))

(defun media-next ()
  "Play Next"
  (interactive)
  (control-media "play_next"))

(defun media-prev ()
  "Play Previous"
  (interactive)
  (control-media "play_prev"))

(defun media-forward ()
  "Forward 1 minute"
  (interactive)
  (control-media "forward2"))

(defun media-rewind ()
  "Rewind 1 minute"
  (interactive)
  (control-media "rewind2"))

(global-set-key (kbd "C-c m p") 'media-play-pause)
(global-set-key (kbd "C-c m n") 'media-next)
(global-set-key (kbd "C-c m P") 'media-prev)
(global-set-key (kbd "C-c m f") 'media-forward)
(global-set-key (kbd "C-c m r") 'media-rewind)


(provide '700-utils)
;;; 700-utils.el ends here
