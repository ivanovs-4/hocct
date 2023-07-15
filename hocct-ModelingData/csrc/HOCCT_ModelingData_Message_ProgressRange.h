
#ifdef __cplusplus
extern "C" {
#endif

#pragma once


#include "hocct-ModelingDataType.h"


#define MESSAGE_PROGRESSRANGE_DECL_VIRT(Type) \



#define MESSAGE_PROGRESSRANGE_DECL_NONVIRT(Type) \
Type##_p Type##_newMessage_ProgressRange (  );


#define MESSAGE_PROGRESSRANGE_DECL_ACCESSOR(Type) \



#define MESSAGE_PROGRESSRANGE_DEF_VIRT(Type) \



#define MESSAGE_PROGRESSRANGE_DEF_NONVIRT(Type) \
Type##_p Type##_newMessage_ProgressRange (  ) {\
Type* newp=new Type();return from_nonconst_to_nonconst<Type##_t, Type>(newp);\
}


#define MESSAGE_PROGRESSRANGE_DEF_ACCESSOR(Type) \



MESSAGE_PROGRESSRANGE_DECL_VIRT(Message_ProgressRange)
MESSAGE_PROGRESSRANGE_DECL_NONVIRT(Message_ProgressRange)
MESSAGE_PROGRESSRANGE_DECL_ACCESSOR(Message_ProgressRange)

#ifdef __cplusplus
}
#endif

