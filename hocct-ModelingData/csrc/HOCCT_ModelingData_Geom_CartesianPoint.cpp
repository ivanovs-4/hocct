
#include "MacroPatternMatch.h"

#include "HOCCT_ModelingData_Geom_Point.h"

#include "Geom_CartesianPoint.hxx"

#include "HOCCT_ModelingData_Geom_CartesianPoint.h"



#define CHECKPROTECT(x,y) FXIS_PAREN(IS_ ## x ## _ ## y ## _PROTECTED)

#define TYPECASTMETHOD(cname,mname,oname) \
  FXIIF( CHECKPROTECT(cname,mname) ) ( \
  (from_nonconst_to_nonconst<oname,cname ## _t>), \
  (from_nonconst_to_nonconst<cname,cname ## _t>) )

GEOM_POINT_DEF_VIRT(Geom_CartesianPoint)
GEOM_GEOMETRY_DEF_VIRT(Geom_CartesianPoint)
GEOM_CARTESIANPOINT_DEF_VIRT(Geom_CartesianPoint)
GEOM_CARTESIANPOINT_DEF_NONVIRT(Geom_CartesianPoint)
GEOM_CARTESIANPOINT_DEF_ACCESSOR(Geom_CartesianPoint)

