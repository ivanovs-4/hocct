
#ifdef __cplusplus
extern "C" {
#endif

#pragma once


#include "hocct-ModelingDataType.h"

#include "HOCCT_ModelingData_TopoDS_Shape.h"


#define TOPODS_COMPOUND_DECL_VIRT(Type) \



#define TOPODS_COMPOUND_DECL_NONVIRT(Type) \
Type##_p Type##_newTopoDS_Compound (  );


#define TOPODS_COMPOUND_DECL_ACCESSOR(Type) \



#define TOPODS_COMPOUND_DEF_VIRT(Type) \



#define TOPODS_COMPOUND_DEF_NONVIRT(Type) \
Type##_p Type##_newTopoDS_Compound (  ) {\
Type* newp=new Type();return from_nonconst_to_nonconst<Type##_t, Type>(newp);\
}


#define TOPODS_COMPOUND_DEF_ACCESSOR(Type) \



TOPODS_SHAPE_DECL_VIRT(TopoDS_Compound)
TOPODS_COMPOUND_DECL_VIRT(TopoDS_Compound)
TOPODS_COMPOUND_DECL_NONVIRT(TopoDS_Compound)
TOPODS_COMPOUND_DECL_ACCESSOR(TopoDS_Compound)

#ifdef __cplusplus
}
#endif

