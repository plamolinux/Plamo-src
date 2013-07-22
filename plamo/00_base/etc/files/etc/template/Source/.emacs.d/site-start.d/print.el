;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Plamo Linux emacs 用設定ファイル (プリンタ関連)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; プリンタ出力設定
(setq ps-multibyte-buffer 'non-latin-printer)
(require 'ps-mule)
;; Emacs-21のバグ(?)対策
(defalias 'ps-mule-header-string-charsets 'ignore)
;; タイムスタンプ表示の調整など
(add-hook 'ps-print-hook
	  '(lambda ()
	     ;; プリンタ出力のコマンドを定義
;	     (setq ps-lpr-command "lpr")
;	     (setq ps-printer-name-option "-P")
	     ;; プリンタ名
;	     (setq ps-printer-name "lp")
;	     (setq ps-line-number t)
	     (load "time-stamp")
	     (setq ps-right-header
		   (list "/pagenumberstring load"
			 'time-stamp-yyyy/mm/dd
			 'time-stamp-hh:mm:ss))))

;(add-hook 'ps-print-hook
;          '(lambda ()
;             (setq ps-font-info-database
;                   (append
;                    '((Japanese                        ; the family key
;                       (fonts (normal      . "Ryumin-Light")
;                              (bold        . "GothicBBB-Bold")
;                              (italic      . "GothicBBB-Bold")
;                              (bold-italic . "Ryumin-Light"))
;                       (size . 10.0)
;                       (line-height . 10.27)
;                       (space-width . 5.99993)
;                       (avg-char-width . 5.99993)))
;                    ps-font-info-database))
;             (setq ps-multibyte-buffer 'non-latin-printer)
;             (setq ps-paper-type 'a4)
;             (setq ps-print-control-characters nil)
;             (setq ps-font-family 'Japanese)
;             (setq ps-font-size '(10 . 10))
;             (setq ps-print-only-one-header t) ))
