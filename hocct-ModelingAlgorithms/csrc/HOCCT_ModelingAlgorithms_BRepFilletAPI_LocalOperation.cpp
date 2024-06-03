
#include "MacroPatternMatch.h"

#include "HOCCT_ModelingAlgorithms_BRepBuilderAPI_MakeShape.h"

#include "BRepFilletAPI_LocalOperation.hxx"

#include "HOCCT_ModelingAlgorithms_BRepFilletAPI_LocalOperation.h"



#define CHECKPROTECT(x,y) FXIS_PAREN(IS_ ## x ## _ ## y ## _PROTECTED)

#define TYPECASTMETHOD(cname,mname,oname) \
  FXIIF( CHECKPROTECT(cname,mname) ) ( \
  (from_nonconst_to_nonconst<oname,cname ## _t>), \
  (from_nonconst_to_nonconst<cname,cname ## _t>) )

BREPBUILDERAPI_MAKESHAPE_DEF_VIRT(BRepFilletAPI_LocalOperation)
BREPBUILDERAPI_COMMAND_DEF_VIRT(BRepFilletAPI_LocalOperation)
BREPFILLETAPI_LOCALOPERATION_DEF_VIRT(BRepFilletAPI_LocalOperation)
BREPFILLETAPI_LOCALOPERATION_DEF_NONVIRT(BRepFilletAPI_LocalOperation)
BREPFILLETAPI_LOCALOPERATION_DEF_ACCESSOR(BRepFilletAPI_LocalOperation)

