(eval-when-compile    (require 'color-theme))
(defun my-color-theme ()
  (interactive)
  (color-theme-install
   '(my-color-theme
      ((background-color . "#000000")
      (background-mode . light)
      (border-color . "#3b3b3b")
      (cursor-color . "#bababa")
      (foreground-color . "#ffffff")
      (mouse-color . "black"))
     (fringe ((t (:background "#3b3b3b"))))
     (mode-line ((t (:foreground "#000000" :background "#dbdbdb"))))
     (region ((t (:background "#222222"))))
     (font-lock-builtin-face ((t (:foreground "#fdd39d"))))
     (font-lock-comment-face ((t (:foreground "#7c7c78"))))
     (font-lock-function-name-face ((t (:foreground "#fdd39d"))))
     (font-lock-keyword-face ((t (:foreground "#90caff"))))
     (font-lock-string-face ((t (:foreground "#8bf33a"))))
     (font-lock-type-face ((t (:foreground"#fdd39d"))))
     (font-lock-variable-name-face ((t (:foreground "#ffffff"))))
     (minibuffer-prompt ((t (:foreground "#ffffff" :bold t))))
     (font-lock-warning-face ((t (:foreground "Red" :bold t))))
     )))
(provide 'my-color-theme)