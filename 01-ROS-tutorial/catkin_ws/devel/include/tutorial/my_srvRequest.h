// Generated by gencpp from file tutorial/my_srvRequest.msg
// DO NOT EDIT!


#ifndef TUTORIAL_MESSAGE_MY_SRVREQUEST_H
#define TUTORIAL_MESSAGE_MY_SRVREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace tutorial
{
template <class ContainerAllocator>
struct my_srvRequest_
{
  typedef my_srvRequest_<ContainerAllocator> Type;

  my_srvRequest_()
    : ml1(0)
    , ml2(0)  {
    }
  my_srvRequest_(const ContainerAllocator& _alloc)
    : ml1(0)
    , ml2(0)  {
  (void)_alloc;
    }



   typedef int64_t _ml1_type;
  _ml1_type ml1;

   typedef int64_t _ml2_type;
  _ml2_type ml2;





  typedef boost::shared_ptr< ::tutorial::my_srvRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tutorial::my_srvRequest_<ContainerAllocator> const> ConstPtr;

}; // struct my_srvRequest_

typedef ::tutorial::my_srvRequest_<std::allocator<void> > my_srvRequest;

typedef boost::shared_ptr< ::tutorial::my_srvRequest > my_srvRequestPtr;
typedef boost::shared_ptr< ::tutorial::my_srvRequest const> my_srvRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tutorial::my_srvRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tutorial::my_srvRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::tutorial::my_srvRequest_<ContainerAllocator1> & lhs, const ::tutorial::my_srvRequest_<ContainerAllocator2> & rhs)
{
  return lhs.ml1 == rhs.ml1 &&
    lhs.ml2 == rhs.ml2;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::tutorial::my_srvRequest_<ContainerAllocator1> & lhs, const ::tutorial::my_srvRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace tutorial

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::tutorial::my_srvRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tutorial::my_srvRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tutorial::my_srvRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tutorial::my_srvRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tutorial::my_srvRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tutorial::my_srvRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tutorial::my_srvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cff21c491323d0c3cd3cf4f2ccc5be3f";
  }

  static const char* value(const ::tutorial::my_srvRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xcff21c491323d0c3ULL;
  static const uint64_t static_value2 = 0xcd3cf4f2ccc5be3fULL;
};

template<class ContainerAllocator>
struct DataType< ::tutorial::my_srvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tutorial/my_srvRequest";
  }

  static const char* value(const ::tutorial::my_srvRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tutorial::my_srvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 ml1\n"
"int64 ml2\n"
;
  }

  static const char* value(const ::tutorial::my_srvRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tutorial::my_srvRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.ml1);
      stream.next(m.ml2);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct my_srvRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tutorial::my_srvRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::tutorial::my_srvRequest_<ContainerAllocator>& v)
  {
    s << indent << "ml1: ";
    Printer<int64_t>::stream(s, indent + "  ", v.ml1);
    s << indent << "ml2: ";
    Printer<int64_t>::stream(s, indent + "  ", v.ml2);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TUTORIAL_MESSAGE_MY_SRVREQUEST_H
