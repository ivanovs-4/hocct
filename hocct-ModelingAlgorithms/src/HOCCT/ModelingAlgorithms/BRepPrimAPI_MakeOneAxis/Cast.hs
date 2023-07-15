{-# LANGUAGE FlexibleInstances, FlexibleContexts, TypeFamilies,
  MultiParamTypeClasses, OverlappingInstances, IncoherentInstances
  #-}
module HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeOneAxis.Cast where
import Foreign.Ptr
import FFICXX.Runtime.Cast
import System.IO.Unsafe
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeOneAxis.RawType
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeOneAxis.Interface

instance (IBRepPrimAPI_MakeOneAxis a, FPtr a) =>
         Castable (a) (Ptr RawBRepPrimAPI_MakeOneAxis)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))

instance () =>
         Castable (BRepPrimAPI_MakeOneAxis) (Ptr RawBRepPrimAPI_MakeOneAxis)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))
