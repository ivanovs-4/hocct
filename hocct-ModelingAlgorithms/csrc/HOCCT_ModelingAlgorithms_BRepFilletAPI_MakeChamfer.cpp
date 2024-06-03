
#include "MacroPatternMatch.h"

#include "HOCCT_ModelingData_TopoDS_Shape.h"

#include "HOCCT_ModelingData_TopoDS_Edge.h"

#include "HOCCT_ModelingAlgorithms_BRepFilletAPI_LocalOperation.h"

#include "BRepFilletAPI_MakeChamfer.hxx"

#include "HOCCT_ModelingAlgorithms_BRepFilletAPI_MakeChamfer.h"



#define CHECKPROTECT(x,y) FXIS_PAREN(IS_ ## x ## _ ## y ## _PROTECTED)

#define TYPECASTMETHOD(cname,mname,oname) \
  FXIIF( CHECKPROTECT(cname,mname) ) ( \
  (from_nonconst_to_nonconst<oname,cname ## _t>), \
  (from_nonconst_to_nonconst<cname,cname ## _t>) )

BREPFILLETAPI_LOCALOPERATION_DEF_VIRT(BRepFilletAPI_MakeChamfer)
BREPBUILDERAPI_MAKESHAPE_DEF_VIRT(BRepFilletAPI_MakeChamfer)
BREPBUILDERAPI_COMMAND_DEF_VIRT(BRepFilletAPI_MakeChamfer)
BREPFILLETAPI_MAKECHAMFER_DEF_VIRT(BRepFilletAPI_MakeChamfer)
BREPFILLETAPI_MAKECHAMFER_DEF_NONVIRT(BRepFilletAPI_MakeChamfer)
BREPFILLETAPI_MAKECHAMFER_DEF_ACCESSOR(BRepFilletAPI_MakeChamfer)

