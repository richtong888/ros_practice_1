; Auto-generated. Do not edit!


(cl:in-package tutorial-srv)


;//! \htmlinclude MulTwoInts-request.msg.html

(cl:defclass <MulTwoInts-request> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type cl:integer
    :initform 0)
   (b
    :reader b
    :initarg :b
    :type cl:integer
    :initform 0))
)

(cl:defclass MulTwoInts-request (<MulTwoInts-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MulTwoInts-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MulTwoInts-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tutorial-srv:<MulTwoInts-request> is deprecated: use tutorial-srv:MulTwoInts-request instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <MulTwoInts-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tutorial-srv:a-val is deprecated.  Use tutorial-srv:a instead.")
  (a m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <MulTwoInts-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tutorial-srv:b-val is deprecated.  Use tutorial-srv:b instead.")
  (b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MulTwoInts-request>) ostream)
  "Serializes a message object of type '<MulTwoInts-request>"
  (cl:let* ((signed (cl:slot-value msg 'a)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'b)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MulTwoInts-request>) istream)
  "Deserializes a message object of type '<MulTwoInts-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'a) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'b) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MulTwoInts-request>)))
  "Returns string type for a service object of type '<MulTwoInts-request>"
  "tutorial/MulTwoIntsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MulTwoInts-request)))
  "Returns string type for a service object of type 'MulTwoInts-request"
  "tutorial/MulTwoIntsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MulTwoInts-request>)))
  "Returns md5sum for a message object of type '<MulTwoInts-request>"
  "22e1fb5e47d069b2b327ca34488a755a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MulTwoInts-request)))
  "Returns md5sum for a message object of type 'MulTwoInts-request"
  "22e1fb5e47d069b2b327ca34488a755a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MulTwoInts-request>)))
  "Returns full string definition for message of type '<MulTwoInts-request>"
  (cl:format cl:nil "int32 a~%int32 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MulTwoInts-request)))
  "Returns full string definition for message of type 'MulTwoInts-request"
  (cl:format cl:nil "int32 a~%int32 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MulTwoInts-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MulTwoInts-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MulTwoInts-request
    (cl:cons ':a (a msg))
    (cl:cons ':b (b msg))
))
;//! \htmlinclude MulTwoInts-response.msg.html

(cl:defclass <MulTwoInts-response> (roslisp-msg-protocol:ros-message)
  ((sum
    :reader sum
    :initarg :sum
    :type cl:integer
    :initform 0)
   (multi
    :reader multi
    :initarg :multi
    :type cl:integer
    :initform 0))
)

(cl:defclass MulTwoInts-response (<MulTwoInts-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MulTwoInts-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MulTwoInts-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tutorial-srv:<MulTwoInts-response> is deprecated: use tutorial-srv:MulTwoInts-response instead.")))

(cl:ensure-generic-function 'sum-val :lambda-list '(m))
(cl:defmethod sum-val ((m <MulTwoInts-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tutorial-srv:sum-val is deprecated.  Use tutorial-srv:sum instead.")
  (sum m))

(cl:ensure-generic-function 'multi-val :lambda-list '(m))
(cl:defmethod multi-val ((m <MulTwoInts-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tutorial-srv:multi-val is deprecated.  Use tutorial-srv:multi instead.")
  (multi m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MulTwoInts-response>) ostream)
  "Serializes a message object of type '<MulTwoInts-response>"
  (cl:let* ((signed (cl:slot-value msg 'sum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'multi)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MulTwoInts-response>) istream)
  "Deserializes a message object of type '<MulTwoInts-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sum) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'multi) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MulTwoInts-response>)))
  "Returns string type for a service object of type '<MulTwoInts-response>"
  "tutorial/MulTwoIntsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MulTwoInts-response)))
  "Returns string type for a service object of type 'MulTwoInts-response"
  "tutorial/MulTwoIntsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MulTwoInts-response>)))
  "Returns md5sum for a message object of type '<MulTwoInts-response>"
  "22e1fb5e47d069b2b327ca34488a755a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MulTwoInts-response)))
  "Returns md5sum for a message object of type 'MulTwoInts-response"
  "22e1fb5e47d069b2b327ca34488a755a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MulTwoInts-response>)))
  "Returns full string definition for message of type '<MulTwoInts-response>"
  (cl:format cl:nil "int32 sum~%int32 multi~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MulTwoInts-response)))
  "Returns full string definition for message of type 'MulTwoInts-response"
  (cl:format cl:nil "int32 sum~%int32 multi~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MulTwoInts-response>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MulTwoInts-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MulTwoInts-response
    (cl:cons ':sum (sum msg))
    (cl:cons ':multi (multi msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MulTwoInts)))
  'MulTwoInts-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MulTwoInts)))
  'MulTwoInts-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MulTwoInts)))
  "Returns string type for a service object of type '<MulTwoInts>"
  "tutorial/MulTwoInts")