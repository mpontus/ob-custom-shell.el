(defadvice org-babel-sh-evaluate (around ob-custom-shell activate)
	   "Read `shell-file-name` from header arguments"
	   (let* ((params (ad-get-arg 2))
		  (shell-file-name
		   (or
		    (cdr (assq :shell params))
		    shell-file-name)))
	   ad-do-it))
