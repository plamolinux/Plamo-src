;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Plamo Linux emacs 用設定ファイル (編集関連)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; 最終更新日の自動挿入
;;;   ファイルの先頭から 8 行以内に Time-stamp: <2011-06-10 20:49:13 karma> または
;;;   Time-stamp: " " と書いてあれば、セーブ時に自動的に日付が挿入されます
(add-hook 'write-file-hooks 'time-stamp)

;;; 最下行で「↓」を押したときスムーズなスクロールにする
(setq scroll-step 1)
(setq scroll-conservatively 4)

;;; PageUp,PageDown の時にカーソル位置を保持
(setq scroll-preserve-screen-position t)

;;; マウスの真ん中ボタンでペーストする時にカーソル位置を変更しない
;(setq mouse-yank-at-point t)

;;; カーソルの位置が何行何桁目かを表示する
(line-number-mode t)
;(column-number-mode t)

;;; フレームの左側に行番号表示する wb-line-number
;;; F11 キーで ON/OFF できます．
;;; http://homepage1.nifty.com/blankspace/emacs/wb-line-number.html
;(require 'wb-line-number)
;(setq truncate-partial-width-windows nil)
;(setq wb-line-number-scroll-bar t)
;(setq wb-cursor-in-non-selected-windows nil)

;;; 自動改行時の一行の文字数
;(setq fill-column 80)

;;; カーソルが行頭にあるときに，C-k 1回で その行全体を削除
;(setq kill-whole-line t)

;;; 長い行を折り返して表示しない
;(set-default 'truncate-lines t)

;;; Ctrl-h を BS に
(global-set-key (kbd "C-h") 'delete-backward-char)

;;; タブを使わない
;(setq-default indent-tabs-mode nil)

;;; マーク領域を色付け
(setq transient-mark-mode t)

;;; 対応する括弧の表示
(show-paren-mode 1)

