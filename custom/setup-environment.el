(helm-flx-mode +1)
(require 'helm-fuzzier)
(helm-fuzzier-mode 1)

(require 'ace-flyspell)
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


(eval-after-load 'company
  '(add-to-list 'company-backends 'company-irony))

(require 'company-irony-c-headers)
;; Load with `irony-mode` as a grouped backend
(eval-after-load 'company
  '(add-to-list
    'company-backends '(company-irony-c-headers company-irony)))


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
(with-eval-after-load 'company
  (company-flx-mode +1))
