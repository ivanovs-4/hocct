
#include "MacroPatternMatch.h"

#include "HOCCT_ModelingData_Geom_Curve.h"

#include "Geom_Line.hxx"

#include "HOCCT_ModelingData_Geom_Line.h"



#define CHECKPROTECT(x,y) FXIS_PAREN(IS_ ## x ## _ ## y ## _PROTECTED)

#define TYPECASTMETHOD(cname,mname,oname) \
  FXIIF( CHECKPROTECT(cname,mname) ) ( \
  (from_nonconst_to_nonconst<oname,cname ## _t>), \
  (from_nonconst_to_nonconst<cname,cname ## _t>) )

GEOM_CURVE_DEF_VIRT(Geom_Line)
GEOM_GEOMETRY_DEF_VIRT(Geom_Line)
GEOM_LINE_DEF_VIRT(Geom_Line)
GEOM_LINE_DEF_NONVIRT(Geom_Line)
GEOM_LINE_DEF_ACCESSOR(Geom_Line)

