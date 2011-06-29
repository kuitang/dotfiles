(show-paren-mode 1)

(global-set-key "\C-m" 'newline-and-indent)

(setq load-path (cons "~/.emacs.d/emacs-rails" load-path))
(require 'rails)

(global-ede-mode 1)
(require 'semantic/sb)
(semantic-mode 1)

