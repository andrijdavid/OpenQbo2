// Generated by gencpp from file qbo_talk/Text2SpeachResponse.msg
// DO NOT EDIT!


#ifndef QBO_TALK_MESSAGE_TEXT2SPEACHRESPONSE_H
#define QBO_TALK_MESSAGE_TEXT2SPEACHRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace qbo_talk
{
template <class ContainerAllocator>
struct Text2SpeachResponse_
{
  typedef Text2SpeachResponse_<ContainerAllocator> Type;

  Text2SpeachResponse_()
    : result(false)  {
    }
  Text2SpeachResponse_(const ContainerAllocator& _alloc)
    : result(false)  {
  (void)_alloc;
    }



   typedef uint8_t _result_type;
  _result_type result;





  typedef boost::shared_ptr< ::qbo_talk::Text2SpeachResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::qbo_talk::Text2SpeachResponse_<ContainerAllocator> const> ConstPtr;

}; // struct Text2SpeachResponse_

typedef ::qbo_talk::Text2SpeachResponse_<std::allocator<void> > Text2SpeachResponse;

typedef boost::shared_ptr< ::qbo_talk::Text2SpeachResponse > Text2SpeachResponsePtr;
typedef boost::shared_ptr< ::qbo_talk::Text2SpeachResponse const> Text2SpeachResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::qbo_talk::Text2SpeachResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::qbo_talk::Text2SpeachResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace qbo_talk

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::qbo_talk::Text2SpeachResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::qbo_talk::Text2SpeachResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::qbo_talk::Text2SpeachResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::qbo_talk::Text2SpeachResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::qbo_talk::Text2SpeachResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::qbo_talk::Text2SpeachResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::qbo_talk::Text2SpeachResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "eb13ac1f1354ccecb7941ee8fa2192e8";
  }

  static const char* value(const ::qbo_talk::Text2SpeachResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xeb13ac1f1354ccecULL;
  static const uint64_t static_value2 = 0xb7941ee8fa2192e8ULL;
};

template<class ContainerAllocator>
struct DataType< ::qbo_talk::Text2SpeachResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "qbo_talk/Text2SpeachResponse";
  }

  static const char* value(const ::qbo_talk::Text2SpeachResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::qbo_talk::Text2SpeachResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool result\n"
"\n"
;
  }

  static const char* value(const ::qbo_talk::Text2SpeachResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::qbo_talk::Text2SpeachResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.result);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Text2SpeachResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::qbo_talk::Text2SpeachResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::qbo_talk::Text2SpeachResponse_<ContainerAllocator>& v)
  {
    s << indent << "result: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.result);
  }
};

} // namespace message_operations
} // namespace ros

#endif // QBO_TALK_MESSAGE_TEXT2SPEACHRESPONSE_H
