(use-package racket-mode
  :ensure t
  :mode "\\.rkt\\'"
  :config
                                        ; (add-hook 'racket-mode-hook #'paredit-mode)
  (add-hook 'racket-mode-hook (lambda () (flyspell-prog-mode))))
