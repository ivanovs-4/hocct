{-# LANGUAGE FlexibleInstances, FlexibleContexts, TypeFamilies,
  MultiParamTypeClasses, OverlappingInstances, IncoherentInstances
  #-}
module HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeTorus.Cast where
import Foreign.Ptr
import FFICXX.Runtime.Cast
import System.IO.Unsafe
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeTorus.RawType
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeTorus.Interface

instance (IBRepPrimAPI_MakeTorus a, FPtr a) =>
         Castable (a) (Ptr RawBRepPrimAPI_MakeTorus)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))

instance () =>
         Castable (BRepPrimAPI_MakeTorus) (Ptr RawBRepPrimAPI_MakeTorus)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))
