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
