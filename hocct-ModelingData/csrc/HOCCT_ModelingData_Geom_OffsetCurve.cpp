
#include "MacroPatternMatch.h"

#include "HOCCT_ModelingData_Geom_Curve.h"

#include "Geom_OffsetCurve.hxx"

#include "HOCCT_ModelingData_Geom_OffsetCurve.h"



#define CHECKPROTECT(x,y) FXIS_PAREN(IS_ ## x ## _ ## y ## _PROTECTED)

#define TYPECASTMETHOD(cname,mname,oname) \
  FXIIF( CHECKPROTECT(cname,mname) ) ( \
  (from_nonconst_to_nonconst<oname,cname ## _t>), \
  (from_nonconst_to_nonconst<cname,cname ## _t>) )

GEOM_CURVE_DEF_VIRT(Geom_OffsetCurve)
GEOM_GEOMETRY_DEF_VIRT(Geom_OffsetCurve)
GEOM_OFFSETCURVE_DEF_VIRT(Geom_OffsetCurve)
GEOM_OFFSETCURVE_DEF_NONVIRT(Geom_OffsetCurve)
GEOM_OFFSETCURVE_DEF_ACCESSOR(Geom_OffsetCurve)

