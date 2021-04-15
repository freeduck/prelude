(when (eq system-type 'windows-nt)
  (setq explicit-shell-file-name
        "c:/Windows/System32/bash.exe")
  (setq shell-file-name explicit-shell-file-name)
  (add-to-list 'exec-path "c:/Windows/System32/"))
