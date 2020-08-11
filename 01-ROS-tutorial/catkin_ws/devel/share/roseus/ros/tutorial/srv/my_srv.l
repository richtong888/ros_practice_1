;; Auto-generated. Do not edit!


(when (boundp 'tutorial::my_srv)
  (if (not (find-package "TUTORIAL"))
    (make-package "TUTORIAL"))
  (shadow 'my_srv (find-package "TUTORIAL")))
(unless (find-package "TUTORIAL::MY_SRV")
  (make-package "TUTORIAL::MY_SRV"))
(unless (find-package "TUTORIAL::MY_SRVREQUEST")
  (make-package "TUTORIAL::MY_SRVREQUEST"))
(unless (find-package "TUTORIAL::MY_SRVRESPONSE")
  (make-package "TUTORIAL::MY_SRVRESPONSE"))

(in-package "ROS")





(defclass tutorial::my_srvRequest
  :super ros::object
  :slots (_ml1 _ml2 ))

(defmethod tutorial::my_srvRequest
  (:init
   (&key
    ((:ml1 __ml1) 0)
    ((:ml2 __ml2) 0)
    )
   (send-super :init)
   (setq _ml1 (round __ml1))
   (setq _ml2 (round __ml2))
   self)
  (:ml1
   (&optional __ml1)
   (if __ml1 (setq _ml1 __ml1)) _ml1)
  (:ml2
   (&optional __ml2)
   (if __ml2 (setq _ml2 __ml2)) _ml2)
  (:serialization-length
   ()
   (+
    ;; int64 _ml1
    8
    ;; int64 _ml2
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _ml1
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _ml1 (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _ml1) (= (length (_ml1 . bv)) 2)) ;; bignum
              (write-long (ash (elt (_ml1 . bv) 0) 0) s)
              (write-long (ash (elt (_ml1 . bv) 1) -1) s))
             ((and (class _ml1) (= (length (_ml1 . bv)) 1)) ;; big1
              (write-long (elt (_ml1 . bv) 0) s)
              (write-long (if (>= _ml1 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _ml1 s)(write-long (if (>= _ml1 0) 0 #xffffffff) s)))
     ;; int64 _ml2
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _ml2 (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _ml2) (= (length (_ml2 . bv)) 2)) ;; bignum
              (write-long (ash (elt (_ml2 . bv) 0) 0) s)
              (write-long (ash (elt (_ml2 . bv) 1) -1) s))
             ((and (class _ml2) (= (length (_ml2 . bv)) 1)) ;; big1
              (write-long (elt (_ml2 . bv) 0) s)
              (write-long (if (>= _ml2 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _ml2 s)(write-long (if (>= _ml2 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _ml1
#+(or :alpha :irix6 :x86_64)
      (setf _ml1 (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _ml1 (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _ml2
#+(or :alpha :irix6 :x86_64)
      (setf _ml2 (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _ml2 (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass tutorial::my_srvResponse
  :super ros::object
  :slots (_sum ))

(defmethod tutorial::my_srvResponse
  (:init
   (&key
    ((:sum __sum) 0)
    )
   (send-super :init)
   (setq _sum (round __sum))
   self)
  (:sum
   (&optional __sum)
   (if __sum (setq _sum __sum)) _sum)
  (:serialization-length
   ()
   (+
    ;; int64 _sum
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _sum
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _sum (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _sum) (= (length (_sum . bv)) 2)) ;; bignum
              (write-long (ash (elt (_sum . bv) 0) 0) s)
              (write-long (ash (elt (_sum . bv) 1) -1) s))
             ((and (class _sum) (= (length (_sum . bv)) 1)) ;; big1
              (write-long (elt (_sum . bv) 0) s)
              (write-long (if (>= _sum 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _sum s)(write-long (if (>= _sum 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _sum
#+(or :alpha :irix6 :x86_64)
      (setf _sum (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _sum (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass tutorial::my_srv
  :super ros::object
  :slots ())

(setf (get tutorial::my_srv :md5sum-) "cd6995d1f27dd1f271e3dace09a45f6f")
(setf (get tutorial::my_srv :datatype-) "tutorial/my_srv")
(setf (get tutorial::my_srv :request) tutorial::my_srvRequest)
(setf (get tutorial::my_srv :response) tutorial::my_srvResponse)

(defmethod tutorial::my_srvRequest
  (:response () (instance tutorial::my_srvResponse :init)))

(setf (get tutorial::my_srvRequest :md5sum-) "cd6995d1f27dd1f271e3dace09a45f6f")
(setf (get tutorial::my_srvRequest :datatype-) "tutorial/my_srvRequest")
(setf (get tutorial::my_srvRequest :definition-)
      "int64 ml1
int64 ml2
---
int64 sum

")

(setf (get tutorial::my_srvResponse :md5sum-) "cd6995d1f27dd1f271e3dace09a45f6f")
(setf (get tutorial::my_srvResponse :datatype-) "tutorial/my_srvResponse")
(setf (get tutorial::my_srvResponse :definition-)
      "int64 ml1
int64 ml2
---
int64 sum

")



(provide :tutorial/my_srv "cd6995d1f27dd1f271e3dace09a45f6f")


