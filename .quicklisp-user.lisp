;;;; Add project directories for quicklisp


(let ((paths
	'(#P"C:/Users/zzzap/Documents/Code/source-projects/"
	  #P"C:/Users/zzzap/Documents/Code/source-projects/ACTIVE/")))
;;;; Add any from paths which is not present in ql:*local-project-directories*
  (dolist (p paths)
    (when (and p (probe-file p) (not (member p ql:*local-project-directories*)))
      (print (format t "Adding ~A to quicklisp local projects directory." p))
      (setf ql:*local-project-directories* (cons p ql:*local-project-directories*)))))
