
#include "MacroPatternMatch.h"

#include "HOCCT_ModelingData_TopoDS_Edge.h"

#include "HOCCT_ModelingData_Geom_Curve.h"

#include "HOCCT_Foundation_GP_Pnt.h"

#include "HOCCT_ModelingData_TopoDS_Vertex.h"

#include "HOCCT_ModelingAlgorithms_BRepBuilderAPI_MakeShape.h"

#include "BRepBuilderAPI_MakeEdge.hxx"

#include "HOCCT_ModelingAlgorithms_BRepBuilderAPI_MakeEdge.h"



#define CHECKPROTECT(x,y) FXIS_PAREN(IS_ ## x ## _ ## y ## _PROTECTED)

#define TYPECASTMETHOD(cname,mname,oname) \
  FXIIF( CHECKPROTECT(cname,mname) ) ( \
  (from_nonconst_to_nonconst<oname,cname ## _t>), \
  (from_nonconst_to_nonconst<cname,cname ## _t>) )

BREPBUILDERAPI_MAKESHAPE_DEF_VIRT(BRepBuilderAPI_MakeEdge)
BREPBUILDERAPI_COMMAND_DEF_VIRT(BRepBuilderAPI_MakeEdge)
BREPBUILDERAPI_MAKEEDGE_DEF_VIRT(BRepBuilderAPI_MakeEdge)
BREPBUILDERAPI_MAKEEDGE_DEF_NONVIRT(BRepBuilderAPI_MakeEdge)
BREPBUILDERAPI_MAKEEDGE_DEF_ACCESSOR(BRepBuilderAPI_MakeEdge)

