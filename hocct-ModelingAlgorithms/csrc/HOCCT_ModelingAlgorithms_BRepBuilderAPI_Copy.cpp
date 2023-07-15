
#include "MacroPatternMatch.h"

#include "HOCCT_ModelingAlgorithms_BRepBuilderAPI_ModifyShape.h"

#include "BRepBuilderAPI_Copy.hxx"

#include "HOCCT_ModelingAlgorithms_BRepBuilderAPI_Copy.h"



#define CHECKPROTECT(x,y) FXIS_PAREN(IS_ ## x ## _ ## y ## _PROTECTED)

#define TYPECASTMETHOD(cname,mname,oname) \
  FXIIF( CHECKPROTECT(cname,mname) ) ( \
  (from_nonconst_to_nonconst<oname,cname ## _t>), \
  (from_nonconst_to_nonconst<cname,cname ## _t>) )

BREPBUILDERAPI_MODIFYSHAPE_DEF_VIRT(BRepBuilderAPI_Copy)
BREPBUILDERAPI_MAKESHAPE_DEF_VIRT(BRepBuilderAPI_Copy)
BREPBUILDERAPI_COMMAND_DEF_VIRT(BRepBuilderAPI_Copy)
BREPBUILDERAPI_COPY_DEF_VIRT(BRepBuilderAPI_Copy)
BREPBUILDERAPI_COPY_DEF_NONVIRT(BRepBuilderAPI_Copy)
BREPBUILDERAPI_COPY_DEF_ACCESSOR(BRepBuilderAPI_Copy)

