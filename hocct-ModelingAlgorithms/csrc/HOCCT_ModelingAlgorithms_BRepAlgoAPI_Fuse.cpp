
#include "MacroPatternMatch.h"

#include "HOCCT_ModelingData_TopoDS_Shape.h"

#include "HOCCT_ModelingAlgorithms_BRepAlgoAPI_BooleanOperation.h"

#include "BRepAlgoAPI_Fuse.hxx"

#include "HOCCT_ModelingAlgorithms_BRepAlgoAPI_Fuse.h"



#define CHECKPROTECT(x,y) FXIS_PAREN(IS_ ## x ## _ ## y ## _PROTECTED)

#define TYPECASTMETHOD(cname,mname,oname) \
  FXIIF( CHECKPROTECT(cname,mname) ) ( \
  (from_nonconst_to_nonconst<oname,cname ## _t>), \
  (from_nonconst_to_nonconst<cname,cname ## _t>) )

BREPALGOAPI_BOOLEANOPERATION_DEF_VIRT(BRepAlgoAPI_Fuse)
BREPALGOAPI_BUILDERALGO_DEF_VIRT(BRepAlgoAPI_Fuse)
BREPALGOAPI_ALGO_DEF_VIRT(BRepAlgoAPI_Fuse)
BREPBUILDERAPI_MAKESHAPE_DEF_VIRT(BRepAlgoAPI_Fuse)
BREPBUILDERAPI_COMMAND_DEF_VIRT(BRepAlgoAPI_Fuse)
BREPALGOAPI_FUSE_DEF_VIRT(BRepAlgoAPI_Fuse)
BREPALGOAPI_FUSE_DEF_NONVIRT(BRepAlgoAPI_Fuse)
BREPALGOAPI_FUSE_DEF_ACCESSOR(BRepAlgoAPI_Fuse)

