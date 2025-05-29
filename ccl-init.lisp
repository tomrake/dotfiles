;;;;          -*-  mode: lisp;  -*-
;;; This is for zzzap CCL init.
;;; The global CCL init has been abandoned.
;;; The following lines added by ql:add-to-init-file:
(print "zzzap specific CCL INIT")
#-quicklisp
(let ((quicklisp-init (merge-pathnames "c:/Users/Public/Lispers/quicklisp/setup.lisp"
                                       (user-homedir-pathname))))
  (when (probe-file quicklisp-init)
    (load quicklisp-init)))

#+quicklisp
(let ((quicklisp-per-user (merge-pathnames ".quicklisp-user.lisp"
					   (user-homedir-pathname))))
  (when (and quicklisp-per-user (probe-file quicklisp-per-user))
    (load quicklisp-per-user)))

(pushnew "/Users/zzzap/Documents/Code/source-projects/ACTIVE/krma/" asdf:*central-registry* :test #'equalp)
(print asdf:*central-registry*)
