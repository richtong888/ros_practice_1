
(cl:in-package :asdf)

(defsystem "tutorial-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "MulTwoInts" :depends-on ("_package_MulTwoInts"))
    (:file "_package_MulTwoInts" :depends-on ("_package"))
    (:file "my_srv" :depends-on ("_package_my_srv"))
    (:file "_package_my_srv" :depends-on ("_package"))
  ))