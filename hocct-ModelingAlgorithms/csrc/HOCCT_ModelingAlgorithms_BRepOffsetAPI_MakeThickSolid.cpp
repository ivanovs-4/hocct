
#include "MacroPatternMatch.h"

#include "HOCCT_ModelingAlgorithms_BRepOffsetAPI_MakeOffsetShape.h"

#include "BRepOffsetAPI_MakeThickSolid.hxx"

#include "HOCCT_ModelingAlgorithms_BRepOffsetAPI_MakeThickSolid.h"



#define CHECKPROTECT(x,y) FXIS_PAREN(IS_ ## x ## _ ## y ## _PROTECTED)

#define TYPECASTMETHOD(cname,mname,oname) \
  FXIIF( CHECKPROTECT(cname,mname) ) ( \
  (from_nonconst_to_nonconst<oname,cname ## _t>), \
  (from_nonconst_to_nonconst<cname,cname ## _t>) )

BREPOFFSETAPI_MAKEOFFSETSHAPE_DEF_VIRT(BRepOffsetAPI_MakeThickSolid)
BREPBUILDERAPI_MAKESHAPE_DEF_VIRT(BRepOffsetAPI_MakeThickSolid)
BREPBUILDERAPI_COMMAND_DEF_VIRT(BRepOffsetAPI_MakeThickSolid)
BREPOFFSETAPI_MAKETHICKSOLID_DEF_VIRT(BRepOffsetAPI_MakeThickSolid)
BREPOFFSETAPI_MAKETHICKSOLID_DEF_NONVIRT(BRepOffsetAPI_MakeThickSolid)
BREPOFFSETAPI_MAKETHICKSOLID_DEF_ACCESSOR(BRepOffsetAPI_MakeThickSolid)

