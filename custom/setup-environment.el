

;(require 'ace-flyspell)


;(eval-after-load "isearch" '(require 'isearch+))


;; (eval-after-load 'image '(require 'image+))

;; Change irony cdb search path to look for build/clang time-since
;; irony makes use of libclang and the automatic search otherwise selects
;; build/gcc if it is available
;; (setq irony-cdb-search-directory-list '("build/clang" "." "build"))
;("build/clang"))






(add-to-list 'load-path "~/.emacs.d/elpa/avy-20190204.1201")

;; (linum-mode nil)
;; (git-gutter:linum-setup)

;; (add-to-list 'load-path "~/.emacs.d/custom/rtags/src/")
;; (setq rtags-path "~/.emacs.d/custom/rtags/bin/")
;; (require 'rtags)
;; (require 'helm-rtags)
;; (require 'company-rtags)
;; (require 'flycheck-rtags)
;; (setq rtags-completions-enabled t)
;; (push 'company-rtags company-backends)
(provide 'setup-environment)
;;; setup-environment.el ends here
