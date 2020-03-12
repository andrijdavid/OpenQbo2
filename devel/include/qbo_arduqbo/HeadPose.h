// Generated by gencpp from file qbo_arduqbo/HeadPose.msg
// DO NOT EDIT!


#ifndef QBO_ARDUQBO_MESSAGE_HEADPOSE_H
#define QBO_ARDUQBO_MESSAGE_HEADPOSE_H


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
struct HeadPose_
{
  typedef HeadPose_<ContainerAllocator> Type;

  HeadPose_()
    : header()
    , yaw(0.0)
    , pitch(0.0)
    , vel(0)  {
    }
  HeadPose_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , yaw(0.0)
    , pitch(0.0)
    , vel(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef float _yaw_type;
  _yaw_type yaw;

   typedef float _pitch_type;
  _pitch_type pitch;

   typedef uint16_t _vel_type;
  _vel_type vel;





  typedef boost::shared_ptr< ::qbo_arduqbo::HeadPose_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::qbo_arduqbo::HeadPose_<ContainerAllocator> const> ConstPtr;

}; // struct HeadPose_

typedef ::qbo_arduqbo::HeadPose_<std::allocator<void> > HeadPose;

typedef boost::shared_ptr< ::qbo_arduqbo::HeadPose > HeadPosePtr;
typedef boost::shared_ptr< ::qbo_arduqbo::HeadPose const> HeadPoseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::qbo_arduqbo::HeadPose_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::qbo_arduqbo::HeadPose_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::qbo_arduqbo::HeadPose_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::qbo_arduqbo::HeadPose_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::qbo_arduqbo::HeadPose_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::qbo_arduqbo::HeadPose_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::qbo_arduqbo::HeadPose_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::qbo_arduqbo::HeadPose_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::qbo_arduqbo::HeadPose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fdd46b1f6066f67bbb10e90ea7461cea";
  }

  static const char* value(const ::qbo_arduqbo::HeadPose_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xfdd46b1f6066f67bULL;
  static const uint64_t static_value2 = 0xbb10e90ea7461ceaULL;
};

template<class ContainerAllocator>
struct DataType< ::qbo_arduqbo::HeadPose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "qbo_arduqbo/HeadPose";
  }

  static const char* value(const ::qbo_arduqbo::HeadPose_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::qbo_arduqbo::HeadPose_<ContainerAllocator> >
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
"float32 yaw\n"
"float32 pitch\n"
"uint16 vel\n"
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

  static const char* value(const ::qbo_arduqbo::HeadPose_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::qbo_arduqbo::HeadPose_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.yaw);
      stream.next(m.pitch);
      stream.next(m.vel);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct HeadPose_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::qbo_arduqbo::HeadPose_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::qbo_arduqbo::HeadPose_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "yaw: ";
    Printer<float>::stream(s, indent + "  ", v.yaw);
    s << indent << "pitch: ";
    Printer<float>::stream(s, indent + "  ", v.pitch);
    s << indent << "vel: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.vel);
  }
};

} // namespace message_operations
} // namespace ros

#endif // QBO_ARDUQBO_MESSAGE_HEADPOSE_H
