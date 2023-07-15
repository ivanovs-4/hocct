{-# LANGUAGE FlexibleInstances, FlexibleContexts, TypeFamilies,
  MultiParamTypeClasses, OverlappingInstances, IncoherentInstances
  #-}
module HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeFace.Cast where
import Foreign.Ptr
import FFICXX.Runtime.Cast
import System.IO.Unsafe
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeFace.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeFace.Interface

instance (IBRepBuilderAPI_MakeFace a, FPtr a) =>
         Castable (a) (Ptr RawBRepBuilderAPI_MakeFace)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))

instance () =>
         Castable (BRepBuilderAPI_MakeFace) (Ptr RawBRepBuilderAPI_MakeFace)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))
