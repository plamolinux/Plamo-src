;; -*- lexical-binding: t; -*-
;;; text-mode
;(add-hook 'text-mode-hook
;	  (lambda ()
;	     (turn-on-auto-fill)
;	     ))

;;; c-mode
(add-hook 'c-mode-hook
	  (lambda ()
;;	     (c-set-style "gnu")
;;	     (c-set-style "k&r")
;;	     (c-set-style "bsd")
;;	     (c-set-style "stroustrup")
;;	     (c-set-style "whitesmith")
;;	     (c-set-style "ellemtel")
;;	     (c-set-style "linux")
	     (setq c-basic-offset 4)
;;	     (setq tab-width 4)
;;	     (setq c-auto-newline t)
	     ) t)

;;; navi2ch
;(autoload 'navi2ch "navi2ch" "Navigator for 2ch for Emacs" t)

;;; Ruby
;(autoload 'ruby-mode "ruby-mode" "Ruby Mode" t)
