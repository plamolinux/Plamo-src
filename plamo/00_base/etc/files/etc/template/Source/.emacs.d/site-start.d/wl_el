;;; Wanderlust 起動設定
;;;   設定は .wl, .folders, .addresses 等に記述
(require 'mime-setup)
(autoload 'wl "wl" "Wanderlust" t)
(autoload 'wl-draft "wl-draft" "Write draft with Wanderlust." t)
(autoload 'elmo-split "elmo-split" "Split messages on the folder." t)
(add-hook 'mime-edit-mode-hook
          (function
           (lambda ()
             (auto-fill-mode 1)
             )))
(setq pgp-version 'gpg)