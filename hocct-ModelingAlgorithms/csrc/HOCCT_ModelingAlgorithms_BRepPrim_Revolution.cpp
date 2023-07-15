
#include "MacroPatternMatch.h"

#include "HOCCT_ModelingAlgorithms_BRepPrim_OneAxis.h"

#include "BRepPrim_Revolution.hxx"

#include "HOCCT_ModelingAlgorithms_BRepPrim_Revolution.h"



#define CHECKPROTECT(x,y) FXIS_PAREN(IS_ ## x ## _ ## y ## _PROTECTED)

#define TYPECASTMETHOD(cname,mname,oname) \
  FXIIF( CHECKPROTECT(cname,mname) ) ( \
  (from_nonconst_to_nonconst<oname,cname ## _t>), \
  (from_nonconst_to_nonconst<cname,cname ## _t>) )

BREPPRIM_ONEAXIS_DEF_VIRT(BRepPrim_Revolution)
BREPPRIM_REVOLUTION_DEF_VIRT(BRepPrim_Revolution)
BREPPRIM_REVOLUTION_DEF_NONVIRT(BRepPrim_Revolution)
BREPPRIM_REVOLUTION_DEF_ACCESSOR(BRepPrim_Revolution)

