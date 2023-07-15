{-# LANGUAGE FlexibleInstances, FlexibleContexts, TypeFamilies,
  MultiParamTypeClasses, OverlappingInstances, IncoherentInstances
  #-}
module HOCCT.ModelingData.Geom_BoundedCurve.Cast where
import Foreign.Ptr
import FFICXX.Runtime.Cast
import System.IO.Unsafe
import HOCCT.ModelingData.Geom_BoundedCurve.RawType
import HOCCT.ModelingData.Geom_BoundedCurve.Interface

instance (IGeom_BoundedCurve a, FPtr a) =>
         Castable (a) (Ptr RawGeom_BoundedCurve)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))

instance () =>
         Castable (Geom_BoundedCurve) (Ptr RawGeom_BoundedCurve)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))
