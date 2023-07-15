
#ifdef __cplusplus
extern "C" {
#endif

#pragma once


#include "hocct-ModelingDataType.h"


#define BREPTOOLS_DECL_VIRT(Type) \



#define BREPTOOLS_DECL_NONVIRT(Type) \
bool Type##_bRepTools_Write ( TopoDS_Shape_p theShape, const char* theFile, Message_ProgressRange_p theProgress );


#define BREPTOOLS_DECL_ACCESSOR(Type) \



#define BREPTOOLS_DEF_VIRT(Type) \



#define BREPTOOLS_DEF_NONVIRT(Type) \
bool Type##_bRepTools_Write ( TopoDS_Shape_p theShape, const char* theFile, Message_ProgressRange_p theProgress ) {\
return BRepTools::Write(from_nonconstref_to_nonconstref<TopoDS_Shape, TopoDS_Shape_t>(*(theShape)), theFile, from_nonconstref_to_nonconstref<Message_ProgressRange, Message_ProgressRange_t>(*(theProgress)));\
}


#define BREPTOOLS_DEF_ACCESSOR(Type) \



BREPTOOLS_DECL_VIRT(BRepTools)
BREPTOOLS_DECL_NONVIRT(BRepTools)
BREPTOOLS_DECL_ACCESSOR(BRepTools)

#ifdef __cplusplus
}
#endif

