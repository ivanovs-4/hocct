
#ifdef __cplusplus
extern "C" {
#endif

#pragma once


#include "hocct-ModelingAlgorithmsType.h"

#include "HOCCT_ModelingAlgorithms_BRepBuilderAPI_MakeShape.h"

#include "HOCCT_ModelingAlgorithms_BRepBuilderAPI_Command.h"

#include "hocct-ModelingDataType.h"


#define BREPBUILDERAPI_MAKEWIRE_DECL_VIRT(Type) \



#define BREPBUILDERAPI_MAKEWIRE_DECL_NONVIRT(Type) \
Type##_p Type##_newBRepBuilderAPI_MakeWireE ( TopoDS_Edge_p E );\
Type##_p Type##_newBRepBuilderAPI_MakeWireE2 ( TopoDS_Edge_p E1, TopoDS_Edge_p E2 );\
Type##_p Type##_newBRepBuilderAPI_MakeWireE3 ( TopoDS_Edge_p E1, TopoDS_Edge_p E2, TopoDS_Edge_p E3 );\
Type##_p Type##_newBRepBuilderAPI_MakeWireE4 ( TopoDS_Edge_p E1, TopoDS_Edge_p E2, TopoDS_Edge_p E3, TopoDS_Edge_p E4 );\
void Type##_bRepBuilderAPI_MakeWire_Add ( Type##_p p, TopoDS_Edge_p E );\
TopoDS_Wire_p Type##_bRepBuilderAPI_MakeWire_Wire ( Type##_p p );


#define BREPBUILDERAPI_MAKEWIRE_DECL_ACCESSOR(Type) \



#define BREPBUILDERAPI_MAKEWIRE_DEF_VIRT(Type) \



#define BREPBUILDERAPI_MAKEWIRE_DEF_NONVIRT(Type) \
Type##_p Type##_newBRepBuilderAPI_MakeWireE ( TopoDS_Edge_p E ) {\
Type* newp=new Type(from_nonconstref_to_nonconstref<TopoDS_Edge, TopoDS_Edge_t>(*(E)));return from_nonconst_to_nonconst<Type##_t, Type>(newp);\
}\
\
Type##_p Type##_newBRepBuilderAPI_MakeWireE2 ( TopoDS_Edge_p E1, TopoDS_Edge_p E2 ) {\
Type* newp=new Type(from_nonconstref_to_nonconstref<TopoDS_Edge, TopoDS_Edge_t>(*(E1)), from_nonconstref_to_nonconstref<TopoDS_Edge, TopoDS_Edge_t>(*(E2)));return from_nonconst_to_nonconst<Type##_t, Type>(newp);\
}\
\
Type##_p Type##_newBRepBuilderAPI_MakeWireE3 ( TopoDS_Edge_p E1, TopoDS_Edge_p E2, TopoDS_Edge_p E3 ) {\
Type* newp=new Type(from_nonconstref_to_nonconstref<TopoDS_Edge, TopoDS_Edge_t>(*(E1)), from_nonconstref_to_nonconstref<TopoDS_Edge, TopoDS_Edge_t>(*(E2)), from_nonconstref_to_nonconstref<TopoDS_Edge, TopoDS_Edge_t>(*(E3)));return from_nonconst_to_nonconst<Type##_t, Type>(newp);\
}\
\
Type##_p Type##_newBRepBuilderAPI_MakeWireE4 ( TopoDS_Edge_p E1, TopoDS_Edge_p E2, TopoDS_Edge_p E3, TopoDS_Edge_p E4 ) {\
Type* newp=new Type(from_nonconstref_to_nonconstref<TopoDS_Edge, TopoDS_Edge_t>(*(E1)), from_nonconstref_to_nonconstref<TopoDS_Edge, TopoDS_Edge_t>(*(E2)), from_nonconstref_to_nonconstref<TopoDS_Edge, TopoDS_Edge_t>(*(E3)), from_nonconstref_to_nonconstref<TopoDS_Edge, TopoDS_Edge_t>(*(E4)));return from_nonconst_to_nonconst<Type##_t, Type>(newp);\
}\
\
void Type##_bRepBuilderAPI_MakeWire_Add ( Type##_p p, TopoDS_Edge_p E ) {\
((TYPECASTMETHOD(Type, bRepBuilderAPI_MakeWire_Add, BRepBuilderAPI_MakeWire))(p))->Add(from_nonconstref_to_nonconstref<TopoDS_Edge, TopoDS_Edge_t>(*(E)));\
}\
\
TopoDS_Wire_p Type##_bRepBuilderAPI_MakeWire_Wire ( Type##_p p ) {\
return from_const_to_nonconst<TopoDS_Wire_t, TopoDS_Wire>(&(((TYPECASTMETHOD(Type, bRepBuilderAPI_MakeWire_Wire, BRepBuilderAPI_MakeWire))(p))->Wire()));\
}


#define BREPBUILDERAPI_MAKEWIRE_DEF_ACCESSOR(Type) \



BREPBUILDERAPI_MAKESHAPE_DECL_VIRT(BRepBuilderAPI_MakeWire)
BREPBUILDERAPI_COMMAND_DECL_VIRT(BRepBuilderAPI_MakeWire)
BREPBUILDERAPI_MAKEWIRE_DECL_VIRT(BRepBuilderAPI_MakeWire)
BREPBUILDERAPI_MAKEWIRE_DECL_NONVIRT(BRepBuilderAPI_MakeWire)
BREPBUILDERAPI_MAKEWIRE_DECL_ACCESSOR(BRepBuilderAPI_MakeWire)

#ifdef __cplusplus
}
#endif

