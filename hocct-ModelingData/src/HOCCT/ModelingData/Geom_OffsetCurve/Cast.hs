{-# LANGUAGE FlexibleInstances, FlexibleContexts, TypeFamilies,
  MultiParamTypeClasses, OverlappingInstances, IncoherentInstances
  #-}
module HOCCT.ModelingData.Geom_OffsetCurve.Cast where
import Foreign.Ptr
import FFICXX.Runtime.Cast
import System.IO.Unsafe
import HOCCT.ModelingData.Geom_OffsetCurve.RawType
import HOCCT.ModelingData.Geom_OffsetCurve.Interface

instance (IGeom_OffsetCurve a, FPtr a) =>
         Castable (a) (Ptr RawGeom_OffsetCurve)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))

instance () =>
         Castable (Geom_OffsetCurve) (Ptr RawGeom_OffsetCurve)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))
