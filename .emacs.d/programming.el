;; Magit
(setq load-path (append (list "~/.emacs.d/magit") load-path))
(require 'magit)

;; Autopair
(require 'autopair)
(autopair-global-mode) ;; enable autopair in all buffers

;; flymake-easy
(load "flymake-easy")
(require 'flymake-easy)

;; Ruby
(load-library "flymake-ruby")
(require 'flymake-ruby)
(add-hook 'ruby-mode-hook 'flymake-ruby-load)
(load-library "ruby-end")
(require 'ruby-end)

;HAML mode
(require 'haml-mode)
(add-hook 'haml-mode-hook
  (lambda ()
    (setq indent-tabs-mode nil)
      (define-key haml-mode-map "\C-m" 'newline-and-indent)))
(add-to-list 'auto-mode-alist '("haml" . haml-mode))

;YAML mode
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

;Markdown mode
(autoload 'markdown-mode "markdown-mode.el"
   "Major mode for editing Markdown files" t)
(setq auto-mode-alist
   (cons '("\\.markdown" . markdown-mode) auto-mode-alist))
(add-to-list 'auto-mode-alist '("\.md$" . markdown-mode))

;; Rake files are ruby, too, as are gemspecs, rackup files, etc.
(add-to-list 'auto-mode-alist '("\.rake$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\.gemspec$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\.ru$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Capfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Vagrantfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("ERB$" . html-mode))

;; Sass
(add-to-list 'auto-mode-alist '("\.scss$" . css-mode))
(add-to-list 'auto-mode-alist '("\.sass$" . css-mode))

;; JavaScript
(setq js-indent-level 2)

;; CSS
(setq css-indent-offset 2)

;; PHP
(require 'php-mode)

;; Yasnippets
(add-to-list 'load-path
              "~/.emacs.d/yasnippet")
(require 'yasnippet)
(yas/global-mode 1)

;auto-complete
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "ac-dict")
(ac-config-default)

;xmp -> comments the return of a method (needs rcodetools gem) (M-')

;; Lua mode
(add-to-list 'load-path "~/.emacs.d/lua-mode/lua-mode.el")
(autoload 'lua-mode "lua-mode" "Lua editing mode." t)
(add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))
(add-to-list 'interpreter-mode-alist '("lua" . lua-mode))

;; testing
;; C-c t m - one test, f - file, r - rake

;; visit-source
