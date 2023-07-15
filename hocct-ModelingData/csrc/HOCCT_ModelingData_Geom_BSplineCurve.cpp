
#include "MacroPatternMatch.h"

#include "HOCCT_ModelingData_Geom_BoundedCurve.h"

#include "Geom_BSplineCurve.hxx"

#include "HOCCT_ModelingData_Geom_BSplineCurve.h"



#define CHECKPROTECT(x,y) FXIS_PAREN(IS_ ## x ## _ ## y ## _PROTECTED)

#define TYPECASTMETHOD(cname,mname,oname) \
  FXIIF( CHECKPROTECT(cname,mname) ) ( \
  (from_nonconst_to_nonconst<oname,cname ## _t>), \
  (from_nonconst_to_nonconst<cname,cname ## _t>) )

GEOM_BOUNDEDCURVE_DEF_VIRT(Geom_BSplineCurve)
GEOM_CURVE_DEF_VIRT(Geom_BSplineCurve)
GEOM_GEOMETRY_DEF_VIRT(Geom_BSplineCurve)
GEOM_BSPLINECURVE_DEF_VIRT(Geom_BSplineCurve)
GEOM_BSPLINECURVE_DEF_NONVIRT(Geom_BSplineCurve)
GEOM_BSPLINECURVE_DEF_ACCESSOR(Geom_BSplineCurve)

