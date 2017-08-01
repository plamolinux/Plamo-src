;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Plam Linux emacs 設定ファイル (動作関連)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; 履歴の保存個数
;(setq history-length 1000)
;;; GC を減らす
;(setq gc-cons-threshold (* 10 gc-cons-threshold))

;;; yes,no を答えるかわりに，y,n にする
;(fset 'yes-or-no-p 'y-or-n-p)

;;; .save.. というファイルを作らない
;(setq auto-save-list-file-name nil)
;(setq auto-save-list-file-prefix nil)

;;; ~つきのバックアップファイルを作らない
;(setq make-backup-files nil)

;;; visible-bell
;(setq visible-bell t)

;;; 起動直後の *scratch* buffer に入る文字列をなくす
;(setq initial-scratch-message nil)

;;; startup message を消す
;(setq inhibit-startup-message t)

;;; gzipされた日本語のinfoを見る
(auto-compression-mode t)

;;; shell-mode で ^M を出さなくする．
(add-hook 'comint-output-filter-functions 'shell-strip-ctrl-m nil t)

;;; shell-mode でパスワード入力を隠す
(add-hook 'comint-output-filter-functions 'comint-watch-for-password-prompt)
(setq comint-password-prompt-regexp "\\(\\([Oo]ld \\|[Nn]ew \\|'s \\|login \\|Kerberos \\|CVS \\|UNIX \\| SMB \\|^\\|\\[sudo\\] \\)パスワード\\|[Pp]assword\\( (again)\\)?\\|pass phrase\\|\\(Enter\\|Repeat\\|Bad\\) passphrase\\)\\(?:, try again\\)?\\(?: for [^:]+\\)?:\\s *\\'")

;;; C-x b で補完する場合に前方一致でなく部分一致とする
(iswitchb-mode 1)
(setq read-buffer-function 'iswitchb-read-buffer)
(setq iswitchb-prompt-newbuffer nil)

;;; URL の扱い
(setq browse-url-browser-function 'browse-url-generic
      browse-url-generic-program "exo-open")

