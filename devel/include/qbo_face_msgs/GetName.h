// Generated by gencpp from file qbo_face_msgs/GetName.msg
// DO NOT EDIT!


#ifndef QBO_FACE_MSGS_MESSAGE_GETNAME_H
#define QBO_FACE_MSGS_MESSAGE_GETNAME_H

#include <ros/service_traits.h>


#include <qbo_face_msgs/GetNameRequest.h>
#include <qbo_face_msgs/GetNameResponse.h>


namespace qbo_face_msgs
{

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
namespace service_traits
{


template<>
struct MD5Sum< ::qbo_face_msgs::GetName > {
  static const char* value()
  {
    return "cc831a68fd288fbc64ac133eede0b36f";
  }

  static const char* value(const ::qbo_face_msgs::GetName&) { return value(); }
};

template<>
struct DataType< ::qbo_face_msgs::GetName > {
  static const char* value()
  {
    return "qbo_face_msgs/GetName";
  }

  static const char* value(const ::qbo_face_msgs::GetName&) { return value(); }
};


// service_traits::MD5Sum< ::qbo_face_msgs::GetNameRequest> should match 
// service_traits::MD5Sum< ::qbo_face_msgs::GetName > 
template<>
struct MD5Sum< ::qbo_face_msgs::GetNameRequest>
{
  static const char* value()
  {
    return MD5Sum< ::qbo_face_msgs::GetName >::value();
  }
  static const char* value(const ::qbo_face_msgs::GetNameRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::qbo_face_msgs::GetNameRequest> should match 
// service_traits::DataType< ::qbo_face_msgs::GetName > 
template<>
struct DataType< ::qbo_face_msgs::GetNameRequest>
{
  static const char* value()
  {
    return DataType< ::qbo_face_msgs::GetName >::value();
  }
  static const char* value(const ::qbo_face_msgs::GetNameRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::qbo_face_msgs::GetNameResponse> should match 
// service_traits::MD5Sum< ::qbo_face_msgs::GetName > 
template<>
struct MD5Sum< ::qbo_face_msgs::GetNameResponse>
{
  static const char* value()
  {
    return MD5Sum< ::qbo_face_msgs::GetName >::value();
  }
  static const char* value(const ::qbo_face_msgs::GetNameResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::qbo_face_msgs::GetNameResponse> should match 
// service_traits::DataType< ::qbo_face_msgs::GetName > 
template<>
struct DataType< ::qbo_face_msgs::GetNameResponse>
{
  static const char* value()
  {
    return DataType< ::qbo_face_msgs::GetName >::value();
  }
  static const char* value(const ::qbo_face_msgs::GetNameResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // QBO_FACE_MSGS_MESSAGE_GETNAME_H
