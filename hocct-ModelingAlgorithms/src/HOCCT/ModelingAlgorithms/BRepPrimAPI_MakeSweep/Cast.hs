{-# LANGUAGE FlexibleInstances, FlexibleContexts, TypeFamilies,
  MultiParamTypeClasses, OverlappingInstances, IncoherentInstances
  #-}
module HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeSweep.Cast where
import Foreign.Ptr
import FFICXX.Runtime.Cast
import System.IO.Unsafe
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeSweep.RawType
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeSweep.Interface

instance (IBRepPrimAPI_MakeSweep a, FPtr a) =>
         Castable (a) (Ptr RawBRepPrimAPI_MakeSweep)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))

instance () =>
         Castable (BRepPrimAPI_MakeSweep) (Ptr RawBRepPrimAPI_MakeSweep)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))
