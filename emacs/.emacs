(add-to-list 'load-path "~/.emacs.d/")
(add-to-list 'load-path "~/.emacs.d/plugins/")
(add-to-list 'load-path "~/.emacs.d/modes/")

;; 加载配色文件
(add-to-list 'load-path "~/.emacs.d/plugins/color-theme/")
;(require 'color-theme)
(load-file "~/.emacs.d/color-themes/my-color-theme.el")
(my-color-theme)

;; 设置字体,字号
(set-default-font "Monaco-14")


;; 快捷键设置
(global-set-key [s-left] 'beginning-of-line)
(global-set-key [s-right] 'end-of-line)
(global-set-key [s-up] 'beginning-of-buffer)
(global-set-key [s-down] 'end-of-buffer)
(global-set-key [s-backspace] 'backward-kill-line)
(global-set-key [kp-delete] 'delete-char)

;; 临时
(global-set-key [M-down] 'eval-buffer)


;; 定义函数 删除光标到行首
(defun backward-kill-line (arg) (interactive "p") (kill-line 0) )


;; 显示行号
(require 'linum)
;(global-linum-mode t)

;(setq-default case-fold-search nil)
(setq-default case-replace nil)

;; 设置缩进
(setq c-basic-offset 4)
(setq indent-tabs-mode nil)
(set-default 'tab-width 4)
(setq tab-width 4)
(setq default-tab-width 4)
(setq-default tab-width 4 indent-tabs-mode nil)
(setq tab-stop-list '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60 64 68 72 76 80 84 88 92 96))
(global-set-key (kbd "RET") 'newline-and-indent)
(setq c-default-style
           '((java-mode . "java") (awk-mode . "awk") (other . "K&R")))

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(cua-mode t nil (cua-base))
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

(setq make-backup-files nil)
(setq auto-save-mode nil)
(setq auto-save-default nil)
(setq-default make-backup-files nil)

(setq inhibit-startup-message t) ;;关闭emacs启动时的画面
(setq gnus-inhibit-startup-message t) ;;关闭gnus启动时的画面
(fset 'yes-or-no-p 'y-or-n-p) ;; 改变 Emacs 固执的要你回答 yes 的行为。按 y 或空格键表示 yes，n 表示 no。

;; 改变光标形状为竖线
(setq-default cursor-type 'bar)
;(set-cursor-color "#000")


;;括号匹配时显示另外一边的括号，而不是烦人的跳到另一个括号。
(show-paren-mode t)
(setq show-paren-style 'parentheses)

;;防止页面滚动时跳动， scroll-margin 1 可以在靠近屏幕边沿1行时就开始滚动，可以很好的看到上下文。
(setq scroll-margin 1
      scroll-conservatively 10000)

;; 防止滚轮滚动过快
(setq mouse-wheel-scroll-amount '(2 ((shift) . 1)((control)))
      mouse-wheel-progressive-speed nil
      scroll-step 1)

                                   
;;Add php-mode
(load "php-mode")
(add-to-list 'auto-mode-alist 
             '("\\.php[34]?\\'\\|\\.phtml\\'" . php-mode))

;;(load "html-helper-mode")
;;(load "tempo")
(autoload 'html-helper-mode "html-helper-mode" "Yay HTML" t)
(setq auto-mode-alist (cons '("\\.html$" . html-helper-mode)       auto-mode-alist))
(setq auto-mode-alist (cons '("\\.asp$" . html-helper-mode)        auto-mode-alist))
(setq auto-mode-alist (cons '("\\.phtml$" . html-helper-mode)      auto-mode-alist))

(require 'zencoding-mode)

(load "haskell-mode/haskell-site-file")
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
;;(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
;;(add-hook 'haskell-mode-hook 'turn-on-haskell-simple-indent)

;; 加载yasnippet-bundle
(require 'yasnippet-bundle)

;; 加载 auto-complete
(add-to-list 'load-path "~/.emacs.d/plugins/auto-complete")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/plugins/auto-complete/ac-dict")
(ac-config-default)

