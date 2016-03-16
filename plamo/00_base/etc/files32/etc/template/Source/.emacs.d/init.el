;; ~/.emacs.d/init.d 以下にある *.el ファイルを読み込む
(let* ((dir "~/.emacs.d/site-start.d")
       (el-suffix "\\.el\\'")
       (files (mapcar
	       (lambda (path) (replace-regexp-in-string el-suffix "" path))
	       (directory-files dir t el-suffix))))
  (while files
    (load (car files))
    (setq files (cdr files))))