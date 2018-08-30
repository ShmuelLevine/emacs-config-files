;;; renumber-tests --- functions to automatically renumber unit tests

;;; Commentary:
; This library provides two functions: renumber-tests and
; renumber-tests-auto which automatically renumber the unit tests in
; a C++ file with sequentially increasing numbers.  This is
; particularly useful when tests are added or deleted in the middle
; of a file and subsequent test numbers must be modified to suit the
; revisions.

; There are 2 versions of this function:

; renumber-tests is an interactive function which prompts the user for
; each unit test.  It uses the elisp function perform-replace, which
; is the same underlying mechanism behind the built-in query-replace
; functions.

; renumber-tests-auto automatically replaces all test numbers from the
; current point with revised numbers.  This function does not prompt
; the user for each change.  This includes tests which are
; commented-out, either using C or C++ comments or by using the
; preprocessor (i.e. #if 0 ... #endif).  For files including old
; tests, commented-out for a particular reason, the interactive
; version (renumber-tests) should probably be used instead of this
; one.

; Both functions start from the current location, not from the
; beginning of the buffer.  An optional argument sets the starting
; test number for the next test.  This is useful when using the
; automatic version of the function in files containing old
; commented-out tests, to correctly set the number for the test
; following commented-out tests.

;;; Code:

(defun renumber-tests-auto(&optional num)
  "Automatically renumber the tests from the current location in
   the active buffer. Optional argument sets the current test
   number (instead of 1).  This function automatically updates
   all test numbers from the current location until the end of
   the buffer without querying the user for each test."
  ;(interactive "NStarting test number: ")
  (interactive "p")
  (save-excursion
    (setq num (or num 1 )
          )
    (while (re-search-forward ", +T0[0-9]+" nil t )
      (replace-match
       (concat ", T" (format "%03d" num )))
      (setq num (+ 1 num))
      )
    )
  )

(defun renumber-tests(&optional num)
  "Interactively renumber the tests from the current location in
   the active buffer. Optional argument sets the current test
   number (instead of 1)"
  (interactive "NStarting test number: ")
  (save-excursion
    (perform-replace ", +T0[0-9]+"
                     (list (lambda (replacement replace-count)
                             (format ", T%03d" (+ replace-count (or num 1 ))
                                                   )))
                     t t nil)))

(provide 'renumber-tests)
;;; renumber-tests.el ends here
