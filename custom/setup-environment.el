(setq tab-width 2)
(setq-default c-basic-offset 2)

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
(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)
(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)

; enable flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)
(eval-after-load 'flycheck
  '(add-hook 'flycheck-mode-hook #'flycheck-irony-setup))

(eval-after-load "isearch" '(require 'isearch+))

(require 'ace-isearch)
(global-ace-isearch-mode +1)

(eval-after-load 'company
  '(progn
     (define-key company-mode-map (kbd "C-:") 'helm-company)
     (define-key company-active-map (kbd "C-:") 'helm-company)))



(provide 'setup-environment)

(require 'magit)
(define-key global-map (kbd "<f9>") 'magit-status)
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




(provide 'setup-environment)
;;; setup-environment.el ends here
