// Generated by gencpp from file qbo_listen/Listened.msg
// DO NOT EDIT!


#ifndef QBO_LISTEN_MESSAGE_LISTENED_H
#define QBO_LISTEN_MESSAGE_LISTENED_H


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
struct Listened_
{
  typedef Listened_<ContainerAllocator> Type;

  Listened_()
    : msg()
    , not_msg()
    , total_score(0.0)
    , min_score(0.0)
    , all_score()  {
    }
  Listened_(const ContainerAllocator& _alloc)
    : msg(_alloc)
    , not_msg(_alloc)
    , total_score(0.0)
    , min_score(0.0)
    , all_score(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _msg_type;
  _msg_type msg;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _not_msg_type;
  _not_msg_type not_msg;

   typedef double _total_score_type;
  _total_score_type total_score;

   typedef double _min_score_type;
  _min_score_type min_score;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _all_score_type;
  _all_score_type all_score;





  typedef boost::shared_ptr< ::qbo_listen::Listened_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::qbo_listen::Listened_<ContainerAllocator> const> ConstPtr;

}; // struct Listened_

typedef ::qbo_listen::Listened_<std::allocator<void> > Listened;

typedef boost::shared_ptr< ::qbo_listen::Listened > ListenedPtr;
typedef boost::shared_ptr< ::qbo_listen::Listened const> ListenedConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::qbo_listen::Listened_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::qbo_listen::Listened_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace qbo_listen

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg'], 'qbo_listen': ['/home/qbo/Desktop/melodia/src/qbo_listen/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::qbo_listen::Listened_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::qbo_listen::Listened_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::qbo_listen::Listened_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::qbo_listen::Listened_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::qbo_listen::Listened_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::qbo_listen::Listened_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::qbo_listen::Listened_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4e6cf606f955a4c6315fb083f058ab13";
  }

  static const char* value(const ::qbo_listen::Listened_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4e6cf606f955a4c6ULL;
  static const uint64_t static_value2 = 0x315fb083f058ab13ULL;
};

template<class ContainerAllocator>
struct DataType< ::qbo_listen::Listened_<ContainerAllocator> >
{
  static const char* value()
  {
    return "qbo_listen/Listened";
  }

  static const char* value(const ::qbo_listen::Listened_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::qbo_listen::Listened_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#Copyright (c) 2012-2013 TheCorpora SL\n"
"#\n"
"#This library is free software; you can redistribute it and/or modify \n"
"#it under the terms of the GNU Lesser General Public License as published by the Free Software Foundation; \n"
"#either version 3 of the License, or (at your option) any later version. \n"
"#\n"
"#This library is distributed in the hope that it will be useful, \n"
"#but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or \n"
"#FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public License for more details.\n"
"#\n"
"#You should have received a copy of the GNU Lesser General Public License along with this library; \n"
"#if not, write to the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA\n"
"\n"
"string msg\n"
"string not_msg\n"
"float64 total_score\n"
"float64 min_score\n"
"string all_score\n"
;
  }

  static const char* value(const ::qbo_listen::Listened_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::qbo_listen::Listened_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.msg);
      stream.next(m.not_msg);
      stream.next(m.total_score);
      stream.next(m.min_score);
      stream.next(m.all_score);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Listened_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::qbo_listen::Listened_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::qbo_listen::Listened_<ContainerAllocator>& v)
  {
    s << indent << "msg: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.msg);
    s << indent << "not_msg: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.not_msg);
    s << indent << "total_score: ";
    Printer<double>::stream(s, indent + "  ", v.total_score);
    s << indent << "min_score: ";
    Printer<double>::stream(s, indent + "  ", v.min_score);
    s << indent << "all_score: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.all_score);
  }
};

} // namespace message_operations
} // namespace ros

#endif // QBO_LISTEN_MESSAGE_LISTENED_H
