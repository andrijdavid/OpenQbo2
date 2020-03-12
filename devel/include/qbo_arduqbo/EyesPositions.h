// Generated by gencpp from file qbo_arduqbo/EyesPositions.msg
// DO NOT EDIT!


#ifndef QBO_ARDUQBO_MESSAGE_EYESPOSITIONS_H
#define QBO_ARDUQBO_MESSAGE_EYESPOSITIONS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace qbo_arduqbo
{
template <class ContainerAllocator>
struct EyesPositions_
{
  typedef EyesPositions_<ContainerAllocator> Type;

  EyesPositions_()
    : header()
    , rightEye(0)
    , leftEye(0)  {
    }
  EyesPositions_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , rightEye(0)
    , leftEye(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint16_t _rightEye_type;
  _rightEye_type rightEye;

   typedef uint16_t _leftEye_type;
  _leftEye_type leftEye;





  typedef boost::shared_ptr< ::qbo_arduqbo::EyesPositions_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::qbo_arduqbo::EyesPositions_<ContainerAllocator> const> ConstPtr;

}; // struct EyesPositions_

typedef ::qbo_arduqbo::EyesPositions_<std::allocator<void> > EyesPositions;

typedef boost::shared_ptr< ::qbo_arduqbo::EyesPositions > EyesPositionsPtr;
typedef boost::shared_ptr< ::qbo_arduqbo::EyesPositions const> EyesPositionsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::qbo_arduqbo::EyesPositions_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::qbo_arduqbo::EyesPositions_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace qbo_arduqbo

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'qbo_arduqbo': ['/home/qbo/Desktop/melodia/src/qbo_arduqbo/msg'], 'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::qbo_arduqbo::EyesPositions_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::qbo_arduqbo::EyesPositions_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::qbo_arduqbo::EyesPositions_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::qbo_arduqbo::EyesPositions_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::qbo_arduqbo::EyesPositions_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::qbo_arduqbo::EyesPositions_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::qbo_arduqbo::EyesPositions_<ContainerAllocator> >
{
  static const char* value()
  {
    return "509ef4a37cf01ef016e536e2a179623e";
  }

  static const char* value(const ::qbo_arduqbo::EyesPositions_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x509ef4a37cf01ef0ULL;
  static const uint64_t static_value2 = 0x16e536e2a179623eULL;
};

template<class ContainerAllocator>
struct DataType< ::qbo_arduqbo::EyesPositions_<ContainerAllocator> >
{
  static const char* value()
  {
    return "qbo_arduqbo/EyesPositions";
  }

  static const char* value(const ::qbo_arduqbo::EyesPositions_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::qbo_arduqbo::EyesPositions_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Software License Agreement (LGPL v2.1 License)\n"
"#\n"
"# Copyright (c) 2012 Thecorpora, Inc.\n"
"#\n"
"# This library is free software; you can redistribute it and/or modify \n"
"# it under the terms of the GNU Lesser General Public License as published\n"
"# by the Free Software Foundation; either version 2.1 of the License, \n"
"# or (at your option) any later version.\n"
"#\n"
"# This library is distributed in the hope that it will be useful, but \n"
"# WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY \n"
"# or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public \n"
"# License for more details.\n"
"#  \n"
"# You should have received a copy of the GNU General Public License \n"
"# along with this program; if not, write to the Free Software \n"
"# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, \n"
"# MA 02110-1301, USA.# Software License Agreement (LGPL v2.1 License)\n"
"#\n"
"# Copyright (c) 2012 Thecorpora, Inc.\n"
"#\n"
"# This library is free software; you can redistribute it and/or modify \n"
"# it under the terms of the GNU Lesser General Public License as published\n"
"# by the Free Software Foundation; either version 2.1 of the License, \n"
"# or (at your option) any later version.\n"
"#\n"
"# This library is distributed in the hope that it will be useful, but \n"
"# WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY \n"
"# or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public \n"
"# License for more details.\n"
"#  \n"
"# You should have received a copy of the GNU General Public License \n"
"# along with this program; if not, write to the Free Software \n"
"# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, \n"
"# MA 02110-1301, USA.\n"
"\n"
"Header header\n"
"uint16 rightEye\n"
"uint16 leftEye\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
;
  }

  static const char* value(const ::qbo_arduqbo::EyesPositions_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::qbo_arduqbo::EyesPositions_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.rightEye);
      stream.next(m.leftEye);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct EyesPositions_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::qbo_arduqbo::EyesPositions_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::qbo_arduqbo::EyesPositions_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "rightEye: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.rightEye);
    s << indent << "leftEye: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.leftEye);
  }
};

} // namespace message_operations
} // namespace ros

#endif // QBO_ARDUQBO_MESSAGE_EYESPOSITIONS_H
