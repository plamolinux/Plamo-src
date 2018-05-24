;;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;  Plamo Linux ユーザ設定ファイルサンプル for Mew
;;                            Time-stamp: <2018-05-24 15:59:17 karma>
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Plamo Linux の Mew を利用するために必要な設定です．
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(setq mew-smtp-helo-domain (getenv "HOSTNAME"))

;;; POPなどを利用する場合は，
;;; 以下の設定を無効にし，
(setq mew-mail-domain (getenv "HOSTNAME"))
(setq mew-mailbox-type 'mbox)
(setq mew-mbox-command "incm")
;;; ドメイン等を以下で設定してください．

;;; メールアドレスの @ より前（ユーザ名）を指定する．
;(setq mew-user "hogeman")

;;; メールアドレスの @ 以降を指定する．
;(setq mew-mail-domain "hoge.fuga.or.jp")

;;; POPを利用する場合．APOP の場合は設定する必要はない．
;(setq mew-pop-auth 'pass)

;;; POPサーバのアカウントを指定する．
;(setq mew-pop-user "hogeman")

;;; 利用するPOPサーバを指定する．
;(setq mew-pop-server "pop.hoge.fuga.or.jp")

;;; 利用するSMTPサーバ（メールサーバ）を指定する．
;(setq mew-smtp-server "smtp.hoge.fuga.or.jp")
;;; SMTP 認証の場合，ユーザ名を指定
;(setq mew-smtp-user "XXXX")

;;; ここは設定する必要はありませんが、From: に日本語を
;;; 入れたい場合などに指定します．
;;(setq mew-from "Hogeman [ほげまん] <hogeman@hoge.fuga.or.jp>")

;;;メイルをメイルサーバに残したままにする
;(setq mew-pop-delete nil)

;;; ML と From: の双方にメールをださないように
(setq mew-replyto-to-list '("Mail-Followup-To:" "Reply-To:"))
(setq mew-replyto-cc-list nil)

;;; POP で取得するメールのサイズ(54kB)をはずす
;(setq mew-pop-size 0)

;;; パスワード(POP、PGP など)が一時的に保存する
(setq mew-use-cached-passwd t)

;;; 起動時に POP サーバをメールを取りに行かないようにする
; (setq mew-auto-get nil)

;;; Summary Buffer で i したときに +queue にあるメッセージを送信
; (setq mew-auto-flush-queue t)

;;; スレッドを見易くする(t→t でスレッド表示)
(setq mew-use-fancy-thread t)
(setq mew-use-thread-separator t)

;;;
;(setq mew-init-hook
;      (function
;       (lambda ()
;	 (setq kill-emacs-hook (function mew-mark-process-all-folders)))))
;(setq mew-reply-to nil)

;(setq mew-cite-fields '("From:" "Subject:" "Date:" "Message-ID:"))
;(setq mew-cite-format "From: %s\nSubject: %s\nDate: %s\nMessage-ID: %s\n\n")
;(defvar mew-cite-prefix-function nil)
;;(setq mew-cite-prefix-function 'mew-cite-prefix-username)

;;; プリンタ出力の設定
(setq mew-print-command-format "a2ps | lpr")
(defun mew-print-region (begin end)
  (interactive "r")
  (shell-command-on-region begin end mew-print-command-format))
(defun mew-print-buffer ()
  (interactive)
  (mew-print-region (point-min) (point-max)))
(setq mew-print-function (function mew-print-buffer))

;;; mouse の中ボタンで，URL を Netscape で表示
(setq browse-url-browser-function 'browse-url-netscape)
(setq browse-url-netscape-program "mozilla")
(add-hook 'mew-message-mode-hook
          (function 
	   (lambda ()
	     (local-set-key [mouse-2] 'browse-url-at-mouse))))
