{-# LANGUAGE FlexibleInstances, FlexibleContexts, TypeFamilies,
  MultiParamTypeClasses, OverlappingInstances, IncoherentInstances
  #-}
module HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeCylinder.Cast where
import Foreign.Ptr
import FFICXX.Runtime.Cast
import System.IO.Unsafe
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeCylinder.RawType
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeCylinder.Interface

instance (IBRepPrimAPI_MakeCylinder a, FPtr a) =>
         Castable (a) (Ptr RawBRepPrimAPI_MakeCylinder)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))

instance () =>
         Castable (BRepPrimAPI_MakeCylinder)
           (Ptr RawBRepPrimAPI_MakeCylinder)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))
