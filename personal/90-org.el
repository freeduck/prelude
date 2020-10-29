(use-package htmlize
  :ensure t)

(use-package org
  :ensure t
  :config
  (org-babel-do-load-languages 'org-babel-load-languages
                               (append '()
                                       (if (equal (org-version)
                                                  "8.2.10")
                                           '((sh . t))
                                         '((shell . t))))))
