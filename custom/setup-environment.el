(setq tab-width 2)
(setq-default c-basic-offset 2)
(setq c-basic-offset 2)

(defun cpp-tab-size ()
  (setq c-basic-offset 2)
  (setq tab-width 2)
  )

(add-hook 'c++-mode-hook 'cpp-tab-size)

(helm-flx-mode +1)
(require 'helm-fuzzier)
(helm-fuzzier-mode 1)

;(require 'ace-flyspell)
(require 'ace-jump-helm-line)

 (eval-after-load "helm"
   '(define-key helm-map (kbd "C-'") 'ace-jump-helm-line))


(autoload
  'ace-jump-mode
  "ace-jump-mode"
  "Emacs quick move minor mode"
  t)
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)


;enable a more powerful jump back function from ace jump mode

(autoload
  'ace-jump-mode-pop-mark
  "ace-jump-mode"
  "Ace jump back:-)"
  t)
(eval-after-load "ace-jump-mode"
  '(ace-jump-mode-enable-mark-sync))
(define-key global-map (kbd "C-x SPC") 'ace-jump-mode-pop-mark)

;; Configure irony mode
(add-to-list 'load-path "~/.emacs.d/elpa/irony-20181013.1454")
(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)
(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)

; enable flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)
(eval-after-load 'flycheck
  '(add-hook 'flycheck-mode-hook #'flycheck-irony-setup))

;(eval-after-load "isearch" '(require 'isearch+))

(require 'ace-isearch)
(global-ace-isearch-mode +1)

(eval-after-load 'company
  '(progn
     (define-key company-mode-map (kbd "C-:") 'helm-company)
     (define-key company-active-map (kbd "C-:") 'helm-company)))



(provide 'setup-environment)

(require 'magit)
;(define-key global-map (kbd "<f9>") 'magit-status)
(require 'magit-gitflow)
(add-hook 'magit-mode-hook 'turn-on-magit-gitflow)

;C-f in magit status buffer will invoke the gitflow popup.


;; company-flx
; flx based fuzzy matching for company
;(with-eval-after-load 'company
;  (company-flx-mode +1))

;; dired+

(require 'dired-dups)
(require 'dired-sort)


;; disk operations
(global-set-key (kbd "<f8>") 'disk)
(autoload 'disk "disk" "Save, revert, or find file." t)

; dired-filter
(define-key dired-mode-map (kbd "<f7>") dired-filter-map)

(eval-after-load 'image-dired '(require 'image-dired+))
(eval-after-load 'image-dired+ '(image-diredx-async-mode 1))
(eval-after-load 'image-dired+ '(image-diredx-adjust-mode 1))

(define-key image-dired-thumbnail-mode-map "\C-n" 'image-diredx-next-line)
(define-key image-dired-thumbnail-mode-map "\C-p" 'image-diredx-previous-line)

(eval-after-load 'image '(require 'image+))

;; Change irony cdb search path to look for build/clang time-since
;; irony makes use of libclang and the automatic search otherwise selects
;; build/gcc if it is available
(setq irony-cdb-search-directory-list '("build/clang" "." "build"))
;("build/clang"))

;; Change the summary line length in magit to be 70 instead of 50.  The default is
;; just too short...
(setq git-commit-summary-max-length 70)

;; Set the compile command to be hardcoded to fx_hpx build/gcc directory (for now)
(defun set_compile_command ()
  (setq compile-command "cd /local/src/fx_hpx/src/build/gcc; make -kj8")
  )
(add-hook 'c++-mode-hook 'set_compile_command)


;; Which-key
;; provides completion menu for keybindings
(require 'which-key)
(which-key-mode)

(global-set-key (kbd "C-c C-s") 'isearch-forward-symbol-at-point)

;; Rainbow-delimiters
(add-hook 'c++-mode #'rainbow-delimiters-mode)
(add-hook 'c++-mode #'rainbow-identifiers-mode)

;; Setup which-function-mode to display the current function in the header row of the current buffer
;; Show the current function name in the header line
(which-function-mode)
(setq-default header-line-format
              '((which-func-mode ("" which-func-format " "))))
(setq mode-line-misc-info
      ;; We remove Which Function Mode from the mode line, because it's mostly
      ;; invisible here anyway.
      (assq-delete-all 'which-func-mode mode-line-misc-info))


;; highlight-symbol.el
;; https://github.com/nschum/highlight-symbol.el

(add-to-list 'load-path "~/.emacs.d/custom/highlight-symbol")
(require 'highlight-symbol)
;(global-set-key [(control f3)] 'highlight-symbol)
;(global-set-key [f3] 'highlight-symbol-next)
;(global-set-key [(shift f3)] 'highlight-symbol-prev)
;(global-set-key [(meta f3)] 'highlight-symbol-query-replace)

;; Discover
(discover-add-context-menu
 :context-menu '(isearch
                 (description "Isearch, occur and highlighting")
                 (lisp-switches
                  ("-cf" "Case should fold search" case-fold-search t nil))
                 (lisp-arguments
                  ("=l" "context lines to show (occur)"
                   "list-matching-lines-default-context-lines"
                   (lambda (dummy) (interactive) (read-number "Number of context lines to show: "))))
                 (actions
                  ("Isearch"
                   ("_" "isearch forward symbol" isearch-forward-symbol)
                   ("w" "isearch forward word" isearch-forward-word))
                  ("Occur"
                   ("o" "occur" occur))
                  ("More"
                   ("h" "highlighters ..." makey-key-mode-popup-isearch-highlight))))
 :bind "C-c M-d")

(provide 'setup-environment)
;;; setup-environment.el ends here
