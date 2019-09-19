((magit-commit nil
               ("--verbose"))
 (magit-diff
  ("--ignore-all-space" "--diff-algorithm=histogram" "--no-ext-diff" "--stat")
  ("--diff-algorithm=histogram" "--no-ext-diff" "--stat")
  ("--ignore-space-change" "--ignore-all-space" "--diff-algorithm=histogram" "--no-ext-diff" "--stat")
  ("--no-ext-diff" "--stat"))
 (magit-diff-refresh
  ("--function-context" "--diff-algorithm=histogram" "--no-ext-diff")
  ("--function-context" "--no-ext-diff"))
 (magit-diff:--diff-algorithm)
 (magit-dispatch nil)
 (magit-gitignore nil)
 (magit-push nil)
 (magit-reset nil))
