(prelude-require-package 'use-package)
(require 'tramp)
(add-to-list 'tramp-remote-path 'tramp-own-remote-path)
(filesets-init)

;; (setq explicit-shell-file-name
;;       "c:/Windows/System32/bash.exe")
;; (setq shell-file-name explicit-shell-file-name)
;; (add-to-list 'exec-path "c:/Windows/System32/")
