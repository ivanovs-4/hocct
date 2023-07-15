{-# LANGUAGE FlexibleInstances, FlexibleContexts, TypeFamilies,
  MultiParamTypeClasses, OverlappingInstances, IncoherentInstances
  #-}
module HOCCT.ModelingData.Geom_TrimmedCurve.Cast where
import Foreign.Ptr
import FFICXX.Runtime.Cast
import System.IO.Unsafe
import HOCCT.ModelingData.Geom_TrimmedCurve.RawType
import HOCCT.ModelingData.Geom_TrimmedCurve.Interface

instance (IGeom_TrimmedCurve a, FPtr a) =>
         Castable (a) (Ptr RawGeom_TrimmedCurve)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))

instance () =>
         Castable (Geom_TrimmedCurve) (Ptr RawGeom_TrimmedCurve)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))
