;;;
;;; mu-cite
;;;
(autoload 'mu-cite-original "mu-cite" nil t)
(add-hook 'mail-citation-hook 'mu-cite-original)
(setq mu-cite-top-format
      '(">>> On " date "\n"
        "    in message   \"" subject "\"\n"
        "                  " full-name "-san wrote:\n\n"))
(setq mu-cite-prefix-format '("> "))