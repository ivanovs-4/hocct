{-# LANGUAGE FlexibleInstances, FlexibleContexts, TypeFamilies,
  MultiParamTypeClasses, OverlappingInstances, IncoherentInstances
  #-}
module HOCCT.ModelingAlgorithms.BRepBuilderAPI_Copy.Cast where
import Foreign.Ptr
import FFICXX.Runtime.Cast
import System.IO.Unsafe
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Copy.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Copy.Interface

instance (IBRepBuilderAPI_Copy a, FPtr a) =>
         Castable (a) (Ptr RawBRepBuilderAPI_Copy)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))

instance () =>
         Castable (BRepBuilderAPI_Copy) (Ptr RawBRepBuilderAPI_Copy)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))
