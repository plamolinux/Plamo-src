;;; ibus.el 設定 (contrib/emacs 以下にあります)
;;;   http://www11.atwiki.jp/s-irie/pages/21.html
(require 'ibus)
(add-hook 'after-init-hook 'ibus-mode-on)

;; Ctrl-Space は Set Mark に使用
(ibus-define-common-key ?\C-\s nil)
;; 
(setq ibus-cursor-color '("red" "blue" "limegreen"))
;; 
(global-set-key "\C-\\" 'ibus-toggle)