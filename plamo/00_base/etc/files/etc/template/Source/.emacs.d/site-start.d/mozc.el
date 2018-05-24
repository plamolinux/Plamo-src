(require 'mozc)
;(require 'mozc-isearch)

(setq default-input-method "japanese-mozc")
(setq mozc-helper-program-name "mozc_emacs_helper")
;; 変換候補を overlay 表示
(setq mozc-candidate-style 'overlay)
;; 変換候補を echo area に表示
;(setq mozc-candidate-style 'echo-area)

;; 起動キー
; meta-Space
;(global-set-key (kbd "M-SPC") 'toggle-input-method)
; Alt-Space
;(global-set-key (kbd "A-SPC") 'toggle-input-method)
; super-Space
;(global-set-key (kbd "s-SPC") 'toggle-input-method)

;; 変換時の色
(set-face-attribute 'mozc-cand-overlay-even-face 'nil
                    :background "LightGray" :foreground "navy")
(set-face-attribute 'mozc-cand-overlay-odd-face 'nil
                    :background "LightGray" :foreground "navy")
