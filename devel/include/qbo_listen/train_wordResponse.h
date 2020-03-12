// Generated by gencpp from file qbo_listen/train_wordResponse.msg
// DO NOT EDIT!


#ifndef QBO_LISTEN_MESSAGE_TRAIN_WORDRESPONSE_H
#define QBO_LISTEN_MESSAGE_TRAIN_WORDRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace qbo_listen
{
template <class ContainerAllocator>
struct train_wordResponse_
{
  typedef train_wordResponse_<ContainerAllocator> Type;

  train_wordResponse_()
    : ok(0)  {
    }
  train_wordResponse_(const ContainerAllocator& _alloc)
    : ok(0)  {
  (void)_alloc;
    }



   typedef int8_t _ok_type;
  _ok_type ok;





  typedef boost::shared_ptr< ::qbo_listen::train_wordResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::qbo_listen::train_wordResponse_<ContainerAllocator> const> ConstPtr;

}; // struct train_wordResponse_

typedef ::qbo_listen::train_wordResponse_<std::allocator<void> > train_wordResponse;

typedef boost::shared_ptr< ::qbo_listen::train_wordResponse > train_wordResponsePtr;
typedef boost::shared_ptr< ::qbo_listen::train_wordResponse const> train_wordResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::qbo_listen::train_wordResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::qbo_listen::train_wordResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace qbo_listen

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg'], 'qbo_listen': ['/home/qbo/Desktop/melodia/src/qbo_listen/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::qbo_listen::train_wordResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::qbo_listen::train_wordResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::qbo_listen::train_wordResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::qbo_listen::train_wordResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::qbo_listen::train_wordResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::qbo_listen::train_wordResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::qbo_listen::train_wordResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "719c501bbbeb289704ee5d42501844db";
  }

  static const char* value(const ::qbo_listen::train_wordResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x719c501bbbeb2897ULL;
  static const uint64_t static_value2 = 0x04ee5d42501844dbULL;
};

template<class ContainerAllocator>
struct DataType< ::qbo_listen::train_wordResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "qbo_listen/train_wordResponse";
  }

  static const char* value(const ::qbo_listen::train_wordResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::qbo_listen::train_wordResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int8 ok\n"
"\n"
;
  }

  static const char* value(const ::qbo_listen::train_wordResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::qbo_listen::train_wordResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.ok);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct train_wordResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::qbo_listen::train_wordResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::qbo_listen::train_wordResponse_<ContainerAllocator>& v)
  {
    s << indent << "ok: ";
    Printer<int8_t>::stream(s, indent + "  ", v.ok);
  }
};

} // namespace message_operations
} // namespace ros

#endif // QBO_LISTEN_MESSAGE_TRAIN_WORDRESPONSE_H
