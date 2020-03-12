/* Auto-generated by genmsg_cpp for file /home/qbo/Desktop/qbo_ws/src/src/qbo_face_vision/qbo_face_msgs/srv/GetName.srv */
#ifndef QBO_FACE_MSGS_SERVICE_GETNAME_H
#define QBO_FACE_MSGS_SERVICE_GETNAME_H
#include <string>
#include <vector>
#include <map>
#include <ostream>
#include "ros/serialization.h"
#include "ros/builtin_message_traits.h"
#include "ros/message_operations.h"
#include "ros/time.h"

#include "ros/macros.h"

#include "ros/assert.h"

#include "ros/service_traits.h"




namespace qbo_face_msgs
{
template <class ContainerAllocator>
struct GetNameRequest_ {
  typedef GetNameRequest_<ContainerAllocator> Type;

  GetNameRequest_()
  {
  }

  GetNameRequest_(const ContainerAllocator& _alloc)
  {
  }


  typedef boost::shared_ptr< ::qbo_face_msgs::GetNameRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::qbo_face_msgs::GetNameRequest_<ContainerAllocator>  const> ConstPtr;
}; // struct GetNameRequest
typedef  ::qbo_face_msgs::GetNameRequest_<std::allocator<void> > GetNameRequest;

typedef boost::shared_ptr< ::qbo_face_msgs::GetNameRequest> GetNameRequestPtr;
typedef boost::shared_ptr< ::qbo_face_msgs::GetNameRequest const> GetNameRequestConstPtr;



template <class ContainerAllocator>
struct GetNameResponse_ {
  typedef GetNameResponse_<ContainerAllocator> Type;

  GetNameResponse_()
  : name()
  , recognized(false)
  {
  }

  GetNameResponse_(const ContainerAllocator& _alloc)
  : name(_alloc)
  , recognized(false)
  {
  }

  typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _name_type;
  std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  name;

  typedef uint8_t _recognized_type;
  uint8_t recognized;


  typedef boost::shared_ptr< ::qbo_face_msgs::GetNameResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::qbo_face_msgs::GetNameResponse_<ContainerAllocator>  const> ConstPtr;
}; // struct GetNameResponse
typedef  ::qbo_face_msgs::GetNameResponse_<std::allocator<void> > GetNameResponse;

typedef boost::shared_ptr< ::qbo_face_msgs::GetNameResponse> GetNameResponsePtr;
typedef boost::shared_ptr< ::qbo_face_msgs::GetNameResponse const> GetNameResponseConstPtr;


struct GetName
{

typedef GetNameRequest Request;
typedef GetNameResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;
}; // struct GetName
} // namespace qbo_face_msgs

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::qbo_face_msgs::GetNameRequest_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::qbo_face_msgs::GetNameRequest_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::qbo_face_msgs::GetNameRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const  ::qbo_face_msgs::GetNameRequest_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::qbo_face_msgs::GetNameRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "qbo_face_msgs/GetNameRequest";
  }

  static const char* value(const  ::qbo_face_msgs::GetNameRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::qbo_face_msgs::GetNameRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "\n\
\n\
\n\
\n\
\n\
\n\
\n\
\n\
\n\
\n\
\n\
\n\
\n\
\n\
\n\
\n\
\n\
\n\
\n\
\n\
";
  }

  static const char* value(const  ::qbo_face_msgs::GetNameRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct IsFixedSize< ::qbo_face_msgs::GetNameRequest_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros


namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::qbo_face_msgs::GetNameResponse_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::qbo_face_msgs::GetNameResponse_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::qbo_face_msgs::GetNameResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "cc831a68fd288fbc64ac133eede0b36f";
  }

  static const char* value(const  ::qbo_face_msgs::GetNameResponse_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0xcc831a68fd288fbcULL;
  static const uint64_t static_value2 = 0x64ac133eede0b36fULL;
};

template<class ContainerAllocator>
struct DataType< ::qbo_face_msgs::GetNameResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "qbo_face_msgs/GetNameResponse";
  }

  static const char* value(const  ::qbo_face_msgs::GetNameResponse_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::qbo_face_msgs::GetNameResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "string name\n\
bool recognized\n\
\n\
\n\
\n\
";
  }

  static const char* value(const  ::qbo_face_msgs::GetNameResponse_<ContainerAllocator> &) { return value(); } 
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::qbo_face_msgs::GetNameRequest_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
  }

  ROS_DECLARE_ALLINONE_SERIALIZER
}; // struct GetNameRequest_
} // namespace serialization
} // namespace ros


namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::qbo_face_msgs::GetNameResponse_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.name);
    stream.next(m.recognized);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER
}; // struct GetNameResponse_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace service_traits
{
template<>
struct MD5Sum<qbo_face_msgs::GetName> {
  static const char* value() 
  {
    return "cc831a68fd288fbc64ac133eede0b36f";
  }

  static const char* value(const qbo_face_msgs::GetName&) { return value(); } 
};

template<>
struct DataType<qbo_face_msgs::GetName> {
  static const char* value() 
  {
    return "qbo_face_msgs/GetName";
  }

  static const char* value(const qbo_face_msgs::GetName&) { return value(); } 
};

template<class ContainerAllocator>
struct MD5Sum<qbo_face_msgs::GetNameRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "cc831a68fd288fbc64ac133eede0b36f";
  }

  static const char* value(const qbo_face_msgs::GetNameRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct DataType<qbo_face_msgs::GetNameRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "qbo_face_msgs/GetName";
  }

  static const char* value(const qbo_face_msgs::GetNameRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct MD5Sum<qbo_face_msgs::GetNameResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "cc831a68fd288fbc64ac133eede0b36f";
  }

  static const char* value(const qbo_face_msgs::GetNameResponse_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct DataType<qbo_face_msgs::GetNameResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "qbo_face_msgs/GetName";
  }

  static const char* value(const qbo_face_msgs::GetNameResponse_<ContainerAllocator> &) { return value(); } 
};

} // namespace service_traits
} // namespace ros

#endif // QBO_FACE_MSGS_SERVICE_GETNAME_H

