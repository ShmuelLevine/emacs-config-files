;;; company --- Configure Company mode for completion

;;; Commentary:
;custom config for company-mode


;;; Code:
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)
(delete 'company-semantic company-backends)
(delete 'company-capf company-backends)
                                        ;(define-key c-mode-map  [(tab)] 'company-complete)
                                        ;(define-key c++-mode-map  [(tab)] 'company-complete)
;; (define-key c-mode-map  [(control tab)] 'company-complete)
;; (define-key c++-mode-map  [(control tab)] 'company-complete)
 (define-key c++-mode-map  [(backtab)] 'company-complete)

                                        ;(delete 'company-semantic company-backends)
                                        ;(define-key c-mode-map  [(tab)] 'company-complete)
                                        ;(define-key c++-mode-map  [(tab)] 'company-complete)
;; (define-key c-mode-map  [(control tab)] 'company-complete)
;; (define-key c++-mode-map  [(control tab)] 'company-complete)

;(eval-after-load 'company
;  '(add-to-list 'company-backends 'company-irony))

(setq company-idle-delay 0.25)
(setq company-async-timeout 10) ;; set timeout to 10 seconds
(setq process-adaptive-read-buffering nil)
(setq company-minimum-prefix-length 3)

;; Set default backends for company auto-complete
(defun cpp-company-backends()
(setq-local company-backends       '(
                               (company-irony-c-headers
                                company-irony
                                )
                               company-gtags
                               (company-files          ; files & directory
                                company-keywords       ; keywords
;                                company-capf
                                company-yasnippet
                                )
                               company-cmake
                               (company-abbrev company-dabbrev)
                               ))
)

(require 'company-irony-c-headers)
;; Load with `irony-mode` as a grouped backend
(eval-after-load 'company
  '(add-to-list
    'company-backends '(company-irony-c-headers company-irony)))

(global-set-key (kbd "M-i") 'company-irony)

(add-hook 'c++-mode-hook 'cpp-company-backends)

(provide 'setup-completion)
;;; setup-completion.el ends here
