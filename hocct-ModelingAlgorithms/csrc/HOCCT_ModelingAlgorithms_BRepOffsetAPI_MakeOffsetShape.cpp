
#include "MacroPatternMatch.h"

#include "HOCCT_ModelingAlgorithms_BRepBuilderAPI_MakeShape.h"

#include "BRepOffsetAPI_MakeOffsetShape.hxx"

#include "HOCCT_ModelingAlgorithms_BRepOffsetAPI_MakeOffsetShape.h"



#define CHECKPROTECT(x,y) FXIS_PAREN(IS_ ## x ## _ ## y ## _PROTECTED)

#define TYPECASTMETHOD(cname,mname,oname) \
  FXIIF( CHECKPROTECT(cname,mname) ) ( \
  (from_nonconst_to_nonconst<oname,cname ## _t>), \
  (from_nonconst_to_nonconst<cname,cname ## _t>) )

BREPBUILDERAPI_MAKESHAPE_DEF_VIRT(BRepOffsetAPI_MakeOffsetShape)
BREPBUILDERAPI_COMMAND_DEF_VIRT(BRepOffsetAPI_MakeOffsetShape)
BREPOFFSETAPI_MAKEOFFSETSHAPE_DEF_VIRT(BRepOffsetAPI_MakeOffsetShape)
BREPOFFSETAPI_MAKEOFFSETSHAPE_DEF_NONVIRT(BRepOffsetAPI_MakeOffsetShape)
BREPOFFSETAPI_MAKEOFFSETSHAPE_DEF_ACCESSOR(BRepOffsetAPI_MakeOffsetShape)

