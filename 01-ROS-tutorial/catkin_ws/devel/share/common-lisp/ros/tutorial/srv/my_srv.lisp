; Auto-generated. Do not edit!


(cl:in-package tutorial-srv)


;//! \htmlinclude my_srv-request.msg.html

(cl:defclass <my_srv-request> (roslisp-msg-protocol:ros-message)
  ((ml1
    :reader ml1
    :initarg :ml1
    :type cl:integer
    :initform 0)
   (ml2
    :reader ml2
    :initarg :ml2
    :type cl:integer
    :initform 0))
)

(cl:defclass my_srv-request (<my_srv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <my_srv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'my_srv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tutorial-srv:<my_srv-request> is deprecated: use tutorial-srv:my_srv-request instead.")))

(cl:ensure-generic-function 'ml1-val :lambda-list '(m))
(cl:defmethod ml1-val ((m <my_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tutorial-srv:ml1-val is deprecated.  Use tutorial-srv:ml1 instead.")
  (ml1 m))

(cl:ensure-generic-function 'ml2-val :lambda-list '(m))
(cl:defmethod ml2-val ((m <my_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tutorial-srv:ml2-val is deprecated.  Use tutorial-srv:ml2 instead.")
  (ml2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <my_srv-request>) ostream)
  "Serializes a message object of type '<my_srv-request>"
  (cl:let* ((signed (cl:slot-value msg 'ml1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ml2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <my_srv-request>) istream)
  "Deserializes a message object of type '<my_srv-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ml1) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ml2) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<my_srv-request>)))
  "Returns string type for a service object of type '<my_srv-request>"
  "tutorial/my_srvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'my_srv-request)))
  "Returns string type for a service object of type 'my_srv-request"
  "tutorial/my_srvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<my_srv-request>)))
  "Returns md5sum for a message object of type '<my_srv-request>"
  "cd6995d1f27dd1f271e3dace09a45f6f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'my_srv-request)))
  "Returns md5sum for a message object of type 'my_srv-request"
  "cd6995d1f27dd1f271e3dace09a45f6f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<my_srv-request>)))
  "Returns full string definition for message of type '<my_srv-request>"
  (cl:format cl:nil "int64 ml1~%int64 ml2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'my_srv-request)))
  "Returns full string definition for message of type 'my_srv-request"
  (cl:format cl:nil "int64 ml1~%int64 ml2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <my_srv-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <my_srv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'my_srv-request
    (cl:cons ':ml1 (ml1 msg))
    (cl:cons ':ml2 (ml2 msg))
))
;//! \htmlinclude my_srv-response.msg.html

(cl:defclass <my_srv-response> (roslisp-msg-protocol:ros-message)
  ((sum
    :reader sum
    :initarg :sum
    :type cl:integer
    :initform 0))
)

(cl:defclass my_srv-response (<my_srv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <my_srv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'my_srv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tutorial-srv:<my_srv-response> is deprecated: use tutorial-srv:my_srv-response instead.")))

(cl:ensure-generic-function 'sum-val :lambda-list '(m))
(cl:defmethod sum-val ((m <my_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tutorial-srv:sum-val is deprecated.  Use tutorial-srv:sum instead.")
  (sum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <my_srv-response>) ostream)
  "Serializes a message object of type '<my_srv-response>"
  (cl:let* ((signed (cl:slot-value msg 'sum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <my_srv-response>) istream)
  "Deserializes a message object of type '<my_srv-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sum) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<my_srv-response>)))
  "Returns string type for a service object of type '<my_srv-response>"
  "tutorial/my_srvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'my_srv-response)))
  "Returns string type for a service object of type 'my_srv-response"
  "tutorial/my_srvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<my_srv-response>)))
  "Returns md5sum for a message object of type '<my_srv-response>"
  "cd6995d1f27dd1f271e3dace09a45f6f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'my_srv-response)))
  "Returns md5sum for a message object of type 'my_srv-response"
  "cd6995d1f27dd1f271e3dace09a45f6f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<my_srv-response>)))
  "Returns full string definition for message of type '<my_srv-response>"
  (cl:format cl:nil "int64 sum~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'my_srv-response)))
  "Returns full string definition for message of type 'my_srv-response"
  (cl:format cl:nil "int64 sum~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <my_srv-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <my_srv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'my_srv-response
    (cl:cons ':sum (sum msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'my_srv)))
  'my_srv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'my_srv)))
  'my_srv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'my_srv)))
  "Returns string type for a service object of type '<my_srv>"
  "tutorial/my_srv")