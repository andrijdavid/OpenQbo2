
(cl:in-package :asdf)

(defsystem "qbo_listen-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "free_train" :depends-on ("_package_free_train"))
    (:file "_package_free_train" :depends-on ("_package"))
    (:file "new_word" :depends-on ("_package_new_word"))
    (:file "_package_new_word" :depends-on ("_package"))
    (:file "spell_word" :depends-on ("_package_spell_word"))
    (:file "_package_spell_word" :depends-on ("_package"))
    (:file "train_word" :depends-on ("_package_train_word"))
    (:file "_package_train_word" :depends-on ("_package"))
  ))