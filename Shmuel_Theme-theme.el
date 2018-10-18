(deftheme Shmuel_Theme
  "Created 2018-10-18.")

(custom-theme-set-variables
 'Shmuel_Theme
 '(magit-commit-arguments (quote ("--verbose")))
 '(package-selected-packages (quote (dired-rainbow rainbow-delimiters rainbow-identifiers isearch-symbol-at-point which-key buffer-move zygospore yasnippet yafolding xterm-color ws-butler volatile-highlights undo-tree smartscan smartparens magit-gitflow magit-filenotify magit iy-go-to-char isearch+ image-dired+ image+ iedit helm-swoop helm-projectile helm-gtags helm-gitignore helm-git helm-fuzzier helm-flycheck helm-flx helm-company google-this gitignore-mode git-commit ggtags fuzzy function-args frame-cmds flycheck-irony flycheck expand-line epl embrace duplicate-thing dummyparens dtrt-indent flyspell-lazy flyspell-correct-helm helm-flyspell dired-subtree dired-dups dired-sort dired-filter dired+ digit-groups diffview cmake-project comment-dwim-2 company-flx company-try-hard company-statistics company-irony-c-headers company-irony company-c-headers company cmake-mode clean-buffers clean-aindent-mode bookmark+ autopair anzu ace-jump-mode ace-jump-helm-line ace-isearch)))
 '(safe-local-variable-values (quote ((projectile-project-compilation-cmd . "cd /home/shmuel/src/fx_hpx/src/build/gcc && make -kj4") (eval c-set-offset (quote innamespace) 0)))))

(custom-theme-set-faces
 'Shmuel_Theme
 '(company-tooltip ((t (:background "color-33" :foreground "brightwhite"))))
 '(diff-added ((t (:inherit diff-changed :background "#226666"))))
 '(diff-changed ((t (:foreground "white"))))
 '(diff-file-header ((t (:weight ultra-bold))))
 '(diff-header ((t (:background "#407f7f"))))
 '(diff-removed ((t (:inherit diff-changed :background "#aa3939"))))
 '(helm-selection ((t (:background "color-17" :distant-foreground "black"))))
 '(helm-visible-mark ((t (:background "color-89"))))
 '(highlight ((t (:background "color-33"))))
 '(lazy-highlight ((t (:background "color-33"))))
 '(link ((t (:foreground "cyan" :underline t))))
 '(magit-diff-added ((t (:background "Plum" :foreground "gray30" :weight extra-bold))))
 '(magit-diff-added-highlight ((t (:background "#cceecc" :foreground "black"))))
 '(magit-diff-removed ((t (:inherit diff-removed))))
 '(magit-diff-removed-highlight ((t (:inherit diff-removed :weight semi-bold))))
 '(magit-section-heading ((t (:foreground "PaleGoldenrod" :weight bold))))
 '(magit-section-highlight ((t (:background "grey15"))))
 '(minibuffer-prompt ((t (:foreground "green"))))
 '(region ((t (:background "lightgoldenrod2" :foreground "black"))))
 '(secondary-selection ((t (:background "yellow1" :foreground "color-234"))))
 '(semantic-highlight-edits-face ((t (:background "gray90" :foreground "black"))))
 '(semantic-highlight-func-current-tag-face ((t (:background "gray90" :foreground "black"))))
 '(semantic-idle-symbol-highlight ((t (:inherit region :foreground "black"))))
 '(shadow ((t (:foreground "#226666"))))
 '(smerge-markers ((t (:background "grey85" :foreground "black"))))
 '(smerge-mine ((t (:background "#660000"))))
 '(smerge-other ((t (:background "#003300"))))
 '(smerge-refined-added ((t (:inherit smerge-refined-change :background "#00b300" :weight ultra-bold))))
 '(smerge-refined-removed ((t (:inherit smerge-refined-change :background "#b30000"))))
 '(sp-pair-overlay-face ((t (:inherit highlight :foreground "black"))))
 '(speedbar-highlight-face ((t (:background "green" :foreground "black")))))

(provide-theme 'Shmuel_Theme)
