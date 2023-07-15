
#include "MacroPatternMatch.h"

#include "HOCCT_Foundation_GP_Trsf.h"

#include "HOCCT_ModelingData_TopoDS_Shape.h"

#include "HOCCT_ModelingAlgorithms_BRepBuilderAPI_ModifyShape.h"

#include "BRepBuilderAPI_Transform.hxx"

#include "HOCCT_ModelingAlgorithms_BRepBuilderAPI_Transform.h"



#define CHECKPROTECT(x,y) FXIS_PAREN(IS_ ## x ## _ ## y ## _PROTECTED)

#define TYPECASTMETHOD(cname,mname,oname) \
  FXIIF( CHECKPROTECT(cname,mname) ) ( \
  (from_nonconst_to_nonconst<oname,cname ## _t>), \
  (from_nonconst_to_nonconst<cname,cname ## _t>) )

BREPBUILDERAPI_MODIFYSHAPE_DEF_VIRT(BRepBuilderAPI_Transform)
BREPBUILDERAPI_MAKESHAPE_DEF_VIRT(BRepBuilderAPI_Transform)
BREPBUILDERAPI_COMMAND_DEF_VIRT(BRepBuilderAPI_Transform)
BREPBUILDERAPI_TRANSFORM_DEF_VIRT(BRepBuilderAPI_Transform)
BREPBUILDERAPI_TRANSFORM_DEF_NONVIRT(BRepBuilderAPI_Transform)
BREPBUILDERAPI_TRANSFORM_DEF_ACCESSOR(BRepBuilderAPI_Transform)

