
#ifdef __cplusplus
extern "C" {
#endif

#pragma once


#include "hocct-ModelingDataType.h"


#define TOPODS_BUILDER_DECL_VIRT(Type) \



#define TOPODS_BUILDER_DECL_NONVIRT(Type) \
Type##_p Type##_newTopoDS_Builder (  );\
void Type##_topoDS_Builder_MakeWire ( Type##_p p, TopoDS_Wire_p W );\
void Type##_topoDS_Builder_MakeShell ( Type##_p p, TopoDS_Shell_p S );\
void Type##_topoDS_Builder_MakeSolid ( Type##_p p, TopoDS_Solid_p S );\
void Type##_topoDS_Builder_MakeCompound ( Type##_p p, TopoDS_Compound_p C );\
void Type##_topoDS_Builder_MakeCompSolid ( Type##_p p, TopoDS_CompSolid_p C );\
void Type##_topoDS_Builder_Add ( Type##_p p, TopoDS_Shape_p S, TopoDS_Shape_p C );


#define TOPODS_BUILDER_DECL_ACCESSOR(Type) \



#define TOPODS_BUILDER_DEF_VIRT(Type) \



#define TOPODS_BUILDER_DEF_NONVIRT(Type) \
Type##_p Type##_newTopoDS_Builder (  ) {\
Type* newp=new Type();return from_nonconst_to_nonconst<Type##_t, Type>(newp);\
}\
\
void Type##_topoDS_Builder_MakeWire ( Type##_p p, TopoDS_Wire_p W ) {\
((TYPECASTMETHOD(Type, topoDS_Builder_MakeWire, TopoDS_Builder))(p))->MakeWire(from_nonconstref_to_nonconstref<TopoDS_Wire, TopoDS_Wire_t>(*(W)));\
}\
\
void Type##_topoDS_Builder_MakeShell ( Type##_p p, TopoDS_Shell_p S ) {\
((TYPECASTMETHOD(Type, topoDS_Builder_MakeShell, TopoDS_Builder))(p))->MakeShell(from_nonconstref_to_nonconstref<TopoDS_Shell, TopoDS_Shell_t>(*(S)));\
}\
\
void Type##_topoDS_Builder_MakeSolid ( Type##_p p, TopoDS_Solid_p S ) {\
((TYPECASTMETHOD(Type, topoDS_Builder_MakeSolid, TopoDS_Builder))(p))->MakeSolid(from_nonconstref_to_nonconstref<TopoDS_Solid, TopoDS_Solid_t>(*(S)));\
}\
\
void Type##_topoDS_Builder_MakeCompound ( Type##_p p, TopoDS_Compound_p C ) {\
((TYPECASTMETHOD(Type, topoDS_Builder_MakeCompound, TopoDS_Builder))(p))->MakeCompound(from_nonconstref_to_nonconstref<TopoDS_Compound, TopoDS_Compound_t>(*(C)));\
}\
\
void Type##_topoDS_Builder_MakeCompSolid ( Type##_p p, TopoDS_CompSolid_p C ) {\
((TYPECASTMETHOD(Type, topoDS_Builder_MakeCompSolid, TopoDS_Builder))(p))->MakeCompSolid(from_nonconstref_to_nonconstref<TopoDS_CompSolid, TopoDS_CompSolid_t>(*(C)));\
}\
\
void Type##_topoDS_Builder_Add ( Type##_p p, TopoDS_Shape_p S, TopoDS_Shape_p C ) {\
((TYPECASTMETHOD(Type, topoDS_Builder_Add, TopoDS_Builder))(p))->Add(from_nonconstref_to_nonconstref<TopoDS_Shape, TopoDS_Shape_t>(*(S)), from_nonconstref_to_nonconstref<TopoDS_Shape, TopoDS_Shape_t>(*(C)));\
}


#define TOPODS_BUILDER_DEF_ACCESSOR(Type) \



TOPODS_BUILDER_DECL_VIRT(TopoDS_Builder)
TOPODS_BUILDER_DECL_NONVIRT(TopoDS_Builder)
TOPODS_BUILDER_DECL_ACCESSOR(TopoDS_Builder)

#ifdef __cplusplus
}
#endif

