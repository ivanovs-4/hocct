{-# LANGUAGE FlexibleInstances, FlexibleContexts, TypeFamilies,
  MultiParamTypeClasses, OverlappingInstances, IncoherentInstances
  #-}
module HOCCT.ModelingData.Geom_BSplineCurve.Cast where
import Foreign.Ptr
import FFICXX.Runtime.Cast
import System.IO.Unsafe
import HOCCT.ModelingData.Geom_BSplineCurve.RawType
import HOCCT.ModelingData.Geom_BSplineCurve.Interface

instance (IGeom_BSplineCurve a, FPtr a) =>
         Castable (a) (Ptr RawGeom_BSplineCurve)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))

instance () =>
         Castable (Geom_BSplineCurve) (Ptr RawGeom_BSplineCurve)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))
