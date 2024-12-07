
#ifdef __cplusplus
extern "C" {
#endif

#pragma once


#include "hocct-ModelingDataType.h"

#include "HOCCT_ModelingData_TopoDS_Shape.h"


#define TOPODS_WIRE_DECL_VIRT(Type) \



#define TOPODS_WIRE_DECL_NONVIRT(Type) \
Type##_p Type##_newTopoDS_Wire (  );


#define TOPODS_WIRE_DECL_ACCESSOR(Type) \



#define TOPODS_WIRE_DEF_VIRT(Type) \



#define TOPODS_WIRE_DEF_NONVIRT(Type) \
Type##_p Type##_newTopoDS_Wire (  ) {\
Type* newp=new Type();return from_nonconst_to_nonconst<Type##_t, Type>(newp);\
}


#define TOPODS_WIRE_DEF_ACCESSOR(Type) \



TOPODS_SHAPE_DECL_VIRT(TopoDS_Wire)
TOPODS_WIRE_DECL_VIRT(TopoDS_Wire)
TOPODS_WIRE_DECL_NONVIRT(TopoDS_Wire)
TOPODS_WIRE_DECL_ACCESSOR(TopoDS_Wire)

#ifdef __cplusplus
}
#endif

