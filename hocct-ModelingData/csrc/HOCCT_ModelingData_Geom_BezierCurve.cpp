
#include "MacroPatternMatch.h"

#include "HOCCT_ModelingData_Geom_BoundedCurve.h"

#include "Geom_BezierCurve.hxx"

#include "HOCCT_ModelingData_Geom_BezierCurve.h"



#define CHECKPROTECT(x,y) FXIS_PAREN(IS_ ## x ## _ ## y ## _PROTECTED)

#define TYPECASTMETHOD(cname,mname,oname) \
  FXIIF( CHECKPROTECT(cname,mname) ) ( \
  (from_nonconst_to_nonconst<oname,cname ## _t>), \
  (from_nonconst_to_nonconst<cname,cname ## _t>) )

GEOM_BOUNDEDCURVE_DEF_VIRT(Geom_BezierCurve)
GEOM_CURVE_DEF_VIRT(Geom_BezierCurve)
GEOM_GEOMETRY_DEF_VIRT(Geom_BezierCurve)
GEOM_BEZIERCURVE_DEF_VIRT(Geom_BezierCurve)
GEOM_BEZIERCURVE_DEF_NONVIRT(Geom_BezierCurve)
GEOM_BEZIERCURVE_DEF_ACCESSOR(Geom_BezierCurve)

