;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; YaTeX
;;   [La]TeX 入力モード
;;   M-x yatex とするか、.tex で終わるファイルを読み込むと起動します
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(setq load-path
      (append '("/usr/share/emacs/site-lisp/yatex") load-path))
(autoload 'yatex-mode "yatex" "Yet Another LaTeX mode" t)
(autoload 'yahtml-mode "yahtml" "Yet Another HTML mode" t)

;; *.tex *.html の拡張子を持つファイルを開いた場合，
;; それぞれ yatex-mode, yahtml-mode にする．
(setq auto-mode-alist
      (cons (cons "\\.tex$" 'yatex-mode)
	    auto-mode-alist))
(setq auto-mode-alist
      (cons (cons "\\.html$" 'yahtml-mode)
	    auto-mode-alist))

(setq YaTeX-kanji-code 3)	; EUCにする
(setq yahtml-kanji-code 3)	; EUCにする
(setq yahtml-www-browser "firefox")
(setq tex-command "platex")
(setq dviprint-from-format "-p %b")
(setq dviprint-to-format "-l %e")
(setq dviprint-command-format "dvips %f %t -f %s | lpr")
