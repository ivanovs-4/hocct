
#ifdef __cplusplus
extern "C" {
#endif

#pragma once


#include "hocct-ModelingAlgorithmsType.h"

#include "HOCCT_ModelingAlgorithms_BRepPrimAPI_MakeOneAxis.h"

#include "HOCCT_ModelingAlgorithms_BRepBuilderAPI_MakeShape.h"

#include "HOCCT_ModelingAlgorithms_BRepBuilderAPI_Command.h"


#define BREPPRIMAPI_MAKECONE_DECL_VIRT(Type) \



#define BREPPRIMAPI_MAKECONE_DECL_NONVIRT(Type) \
Type##_p Type##_newBRepPrimAPI_MakeCone ( double R1, double R2, double H );\
BRepPrim_Cone_p Type##_bRepPrimAPI_MakeCone_Cone ( Type##_p p );


#define BREPPRIMAPI_MAKECONE_DECL_ACCESSOR(Type) \



#define BREPPRIMAPI_MAKECONE_DEF_VIRT(Type) \



#define BREPPRIMAPI_MAKECONE_DEF_NONVIRT(Type) \
Type##_p Type##_newBRepPrimAPI_MakeCone ( double R1, double R2, double H ) {\
Type* newp=new Type(R1, R2, H);return from_nonconst_to_nonconst<Type##_t, Type>(newp);\
}\
\
BRepPrim_Cone_p Type##_bRepPrimAPI_MakeCone_Cone ( Type##_p p ) {\
return from_const_to_nonconst<BRepPrim_Cone_t, BRepPrim_Cone>(&(((TYPECASTMETHOD(Type, bRepPrimAPI_MakeCone_Cone, BRepPrimAPI_MakeCone))(p))->Cone()));\
}


#define BREPPRIMAPI_MAKECONE_DEF_ACCESSOR(Type) \



BREPPRIMAPI_MAKEONEAXIS_DECL_VIRT(BRepPrimAPI_MakeCone)
BREPBUILDERAPI_MAKESHAPE_DECL_VIRT(BRepPrimAPI_MakeCone)
BREPBUILDERAPI_COMMAND_DECL_VIRT(BRepPrimAPI_MakeCone)
BREPPRIMAPI_MAKECONE_DECL_VIRT(BRepPrimAPI_MakeCone)
BREPPRIMAPI_MAKECONE_DECL_NONVIRT(BRepPrimAPI_MakeCone)
BREPPRIMAPI_MAKECONE_DECL_ACCESSOR(BRepPrimAPI_MakeCone)

#ifdef __cplusplus
}
#endif

