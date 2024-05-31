{-# LANGUAGE FlexibleInstances, FlexibleContexts, TypeFamilies,
  MultiParamTypeClasses, OverlappingInstances, IncoherentInstances
  #-}
module HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeWedge.Cast where
import Foreign.Ptr
import FFICXX.Runtime.Cast
import System.IO.Unsafe
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeWedge.RawType
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeWedge.Interface

instance (IBRepPrimAPI_MakeWedge a, FPtr a) =>
         Castable (a) (Ptr RawBRepPrimAPI_MakeWedge)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))

instance () =>
         Castable (BRepPrimAPI_MakeWedge) (Ptr RawBRepPrimAPI_MakeWedge)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))
