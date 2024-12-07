
#ifdef __cplusplus
extern "C" {
#endif

#pragma once


#include "hocct-ModelingDataType.h"

#include "HOCCT_ModelingData_TopoDS_Shape.h"


#define TOPODS_SHELL_DECL_VIRT(Type) \



#define TOPODS_SHELL_DECL_NONVIRT(Type) \
Type##_p Type##_newTopoDS_Shell (  );


#define TOPODS_SHELL_DECL_ACCESSOR(Type) \



#define TOPODS_SHELL_DEF_VIRT(Type) \



#define TOPODS_SHELL_DEF_NONVIRT(Type) \
Type##_p Type##_newTopoDS_Shell (  ) {\
Type* newp=new Type();return from_nonconst_to_nonconst<Type##_t, Type>(newp);\
}


#define TOPODS_SHELL_DEF_ACCESSOR(Type) \



TOPODS_SHAPE_DECL_VIRT(TopoDS_Shell)
TOPODS_SHELL_DECL_VIRT(TopoDS_Shell)
TOPODS_SHELL_DECL_NONVIRT(TopoDS_Shell)
TOPODS_SHELL_DECL_ACCESSOR(TopoDS_Shell)

#ifdef __cplusplus
}
#endif

