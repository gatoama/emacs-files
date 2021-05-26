; Original function foo from
; https://puntoblogspot.blogspot.com/2018/04/bootstrap-your-emacs-lisp-learning.html

(defun foo ()
  "Smallest practical sample code to learn elisp."
  (interactive)
  (save-excursion
    (beginning-of-line)
    (insert ";")))

; Add parameter and rename foo.
(defun make-comment-line (comment-str)
  "Use parameter in function"
  (interactive "sEnter comment string: ")
  (save-excursion
    (beginning-of-line)
    (insert comment-str)))

; Carry out operation on an entire buffer.
(defun make-comment-buffer (comment-str)
  "Carry out operation over entire buffer."
  (interactive "sEnter comment string: ")
  (save-excursion
    (beginning-of-buffer)
    (while (not eobp))
      (beginning-of-line)
      (insert comment-str)
      (forward-line 1)))

(defun my/walk-line-by-line ()
  "Carry out operation over entire buffer."
  (interactive)
  (save-excursion
    (beginning-of-buffer)
    (while (not (eobp))
      (beginning-of-line)
      (insert comment-str)      
      (forward-line-1)
      )))
