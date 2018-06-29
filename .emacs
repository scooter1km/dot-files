;; Always turn on font-lock mode
(global-font-lock-mode 1)

;; Emacs Load Path
;;(setq load-path (cons "~/elisp" load-path))

;; cperl-mode is preferred to perl-mode                                        
(defalias 'perl-mode 'cperl-mode)

;; Load Perforce library
;;(load-library "p4")

;; Load file modes
(autoload 'systemc-mode "systemc-mode" "Mode for SystemC files." t)
(autoload 'matlab-mode "matlab" "Mode for Matlab files." t)
(autoload 'verilog-mode "verilog-mode" "Mode for Verilog files." t)
(autoload 'graphviz-dot-mode "graphviz-dot-mode" "Mode for dot file." t)
(autoload 'wikipedia-mode "wikipedia-mode" "Mode for MediaWiki sources." t)
(autoload `yaml-mode "yaml-mode" "Mode for YAML files." t)

;; Filename associations
(setq auto-mode-alist (cons '("\\.h\\'" . c++-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.v\\'" . verilog-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.vh\\'" . verilog-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.sv\\'" . verilog-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.svh\\'" . verilog-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.dot\\'" . graphviz-dot-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("makefile\\." . makefile-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("Makefile\\." . makefile-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.wiki\\'" . wikipedia-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.yml\\'" . yaml-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.yaml\\'" . yaml-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.m\\'" . matlab-mode) auto-mode-alist))

;; Don't truncate long lines on the screen
(setq-default default-truncate-lines t)

;; Enable selection highlighting
(setq-default transient-mark-mode t)

;; It is always better to know current line and column number
(column-number-mode t)
(line-number-mode t)

;; Key bindings:
(global-set-key [C-home]   'beginning-of-buffer     )
(global-set-key [C-end]    'end-of-buffer           )
(global-set-key [f9]       'font-lock-fontify-buffer)
(global-set-key [f10]      'revert-buffer           )
(global-set-key [mouse-4]  'scroll-down             )
(global-set-key [mouse-5]  'scroll-up               )
(global-set-key "\C-c\C-g" 'goto-line               )

;; Indent with spaces, not tabs
(setq-default indent-tabs-mode nil)

;; Indent with 4 columns
(setq verilog-indent-level             4
      verilog-indent-level-module      4
      verilog-indent-level-declaration 4
      verilog-indent-level-behavioral  4
      verilog-indent-level-directive   0
      verilog-case-indent              2
      verilog-auto-newline             t
      verilog-auto-indent-on-newline   t
      verilog-tab-always-indent        t
      verilog-auto-endcomments         t
      verilog-minimum-comment-distance 40
      verilog-indent-begin-after-if    t
      verilog-auto-lineup              '(all)
      verilog-highlight-p1800-keywords t
      )
(setq verilog-indent-level 4)

;; Disable beep
(setq visible-bell t)

;; Turn off splash
(setq inhibit-splash-screen t)

;; Colors
(custom-set-faces
 '(default ((t (:foreground "white" :background "blue4"))))
 '(font-lock-builtin-face       ((t (:foreground "LightSteelBlue"))))
 '(font-lock-comment-face       ((t (:foreground "deep sky blue"))))
 '(font-lock-constant-face      ((t (:foreground "lime green"))))
 '(font-lock-doc-face           ((t (:foreground "gold"))))
 '(font-lock-doc-string-face    ((t (:foreground "gold"))))
 '(font-lock-function-name-face ((t (:foreground "gold" :bold t))))
 '(font-lock-keyword-face       ((t (:foreground "lime green"))))
 '(font-lock-preprocessor-face  ((t (:foreground "firebrick"))))
 '(font-lock-reference-face     ((t (:foreground "LightSteelBlue"))))
 '(font-lock-string-face        ((t (:foreground "gold"))))
 '(font-lock-type-face          ((t (:foreground "aquamarine2"))))
 '(font-lock-variable-name-face ((t (:foreground "LightGoldenrod"))))
 '(font-lock-warning-face       ((t (:foreground "firebrick" :bold t))))
 '(highlight                    ((t (:foreground "black" :background "steel blue"))))
 '(modeline                     ((t (:foreground "white" :background "black"))))
 '(modeline-buffer-id           ((t (:foreground "white" :background "black"))))
 '(modeline-mousable            ((t (:foreground "white" :background "black"))))
 '(modeline-mousable-minor-mode ((t (:foreground "white" :background "black"))))
;;  '(primary-selection            ((t (:background "firebrick" :foreground "white"))))
;;  '(region                       ((t (:background "firebrick" :foreground "white"))))
 '(secondary-selection          ((t (:background "yellow2" :foreground "black"))))
 '(show-paren-match-face        ((t (:background "deep sky blue" :foreground "black"))))
 '(show-paren-mismatch-face     ((t (:background "firebrick" :foreground "white"))))
 '(underline                    ((t (:underline t :background "blue4" :foreground "white"))))
 )
(set-cursor-color "gold")
(set-foreground-color "white")
(set-background-color "blue4")
(set-face-foreground 'default "white")
(set-face-background 'default "blue4")
(set-mouse-color "white")

(put 'downcase-region 'disabled nil)

(put 'upcase-region 'disabled nil)
