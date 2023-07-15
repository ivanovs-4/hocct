
#include "MacroPatternMatch.h"

#include "BRepPrim_OneAxis.hxx"

#include "HOCCT_ModelingAlgorithms_BRepPrim_OneAxis.h"



#define CHECKPROTECT(x,y) FXIS_PAREN(IS_ ## x ## _ ## y ## _PROTECTED)

#define TYPECASTMETHOD(cname,mname,oname) \
  FXIIF( CHECKPROTECT(cname,mname) ) ( \
  (from_nonconst_to_nonconst<oname,cname ## _t>), \
  (from_nonconst_to_nonconst<cname,cname ## _t>) )

BREPPRIM_ONEAXIS_DEF_VIRT(BRepPrim_OneAxis)
BREPPRIM_ONEAXIS_DEF_NONVIRT(BRepPrim_OneAxis)
BREPPRIM_ONEAXIS_DEF_ACCESSOR(BRepPrim_OneAxis)

