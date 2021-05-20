; Original function foo from
; https://puntoblogspot.blogspot.com/2018/04/bootstrap-your-emacs-lisp-learning.html

(defun foo ()
  (interactive)
  (save-excursion
    (beginning-of-line)
    (insert ";")))

; Add parameter and rename foo.
(defun make-comment (comment-str)
  (interactive "sEnter comment string: ")
  (save-excursion
    (beginning-of-line)
    (insert comment-str)))
