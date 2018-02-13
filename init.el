; Global Settings
(transient-mark-mode t) ;Highlight selection from mark to here...
(which-function-mode t)
(global-set-key "\C-xn" 'next-multiframe-window)
(global-set-key "\C-xp" 'previous-multiframe-window)
(setq find-grep-options "-i -q") ;Add -i to default for find-grep-dired.
(setq-default indent-tabs-mode nil) ;Use spaces instead of hard tabs.
(setq column-number-mode t) ;Enable column-number-mode by default.

; C and C++ Indentation Settings
(defun my-c-c++-indent-settings ()
  (setq tab-width 4)
  (setq c-basic-offset 4))

; C Settings
(add-hook 'c-mode-hook 'my-c-c++-indent-settings)

; C++ Settings
(add-hook 'c++-mode-hook 'my-c-c++-indent-settings)

; Makefile Settings
(add-hook 'makefile-mode-hook 
	  '(lambda ()
	     (set-variable 'tab-width 4)
	   )
)

; elpy
(package-initialize)
(elpy-enable)
;(elpy-use-ipython)
(setq elpy-modules
      (quote
       (elpy-module-company
        elpy-module-pyvenv
        elpy-module-yasnippet
        elpy-module-sane-defaults)))

; Javascript Settings
(setq js-indent-level 2)
