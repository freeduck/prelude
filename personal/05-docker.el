(use-package docker
  :commands docker)
(use-package docker-tramp
  :ensure t
  :after docker
  :config (add-to-list 'tramp-remote-path 'tramp-own-remote-path))
(use-package dockerfile-mode)
