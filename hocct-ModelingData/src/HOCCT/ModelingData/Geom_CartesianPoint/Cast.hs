{-# LANGUAGE FlexibleInstances, FlexibleContexts, TypeFamilies,
  MultiParamTypeClasses, OverlappingInstances, IncoherentInstances
  #-}
module HOCCT.ModelingData.Geom_CartesianPoint.Cast where
import Foreign.Ptr
import FFICXX.Runtime.Cast
import System.IO.Unsafe
import HOCCT.ModelingData.Geom_CartesianPoint.RawType
import HOCCT.ModelingData.Geom_CartesianPoint.Interface

instance (IGeom_CartesianPoint a, FPtr a) =>
         Castable (a) (Ptr RawGeom_CartesianPoint)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))

instance () =>
         Castable (Geom_CartesianPoint) (Ptr RawGeom_CartesianPoint)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))
