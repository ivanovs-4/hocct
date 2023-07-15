
#include "MacroPatternMatch.h"

#include "HOCCT_ModelingAlgorithms_BRepBuilderAPI_MakeShape.h"

#include "BRepBuilderAPI_ModifyShape.hxx"

#include "HOCCT_ModelingAlgorithms_BRepBuilderAPI_ModifyShape.h"



#define CHECKPROTECT(x,y) FXIS_PAREN(IS_ ## x ## _ ## y ## _PROTECTED)

#define TYPECASTMETHOD(cname,mname,oname) \
  FXIIF( CHECKPROTECT(cname,mname) ) ( \
  (from_nonconst_to_nonconst<oname,cname ## _t>), \
  (from_nonconst_to_nonconst<cname,cname ## _t>) )

BREPBUILDERAPI_MAKESHAPE_DEF_VIRT(BRepBuilderAPI_ModifyShape)
BREPBUILDERAPI_COMMAND_DEF_VIRT(BRepBuilderAPI_ModifyShape)
BREPBUILDERAPI_MODIFYSHAPE_DEF_VIRT(BRepBuilderAPI_ModifyShape)
BREPBUILDERAPI_MODIFYSHAPE_DEF_NONVIRT(BRepBuilderAPI_ModifyShape)
BREPBUILDERAPI_MODIFYSHAPE_DEF_ACCESSOR(BRepBuilderAPI_ModifyShape)

