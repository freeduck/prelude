;; (defvar outline-minor-mode-prefix "\M-#")
(use-package outshine
  :ensure t
  :config
  (add-hook 'prog-mode-hook #'outshine-mode))
