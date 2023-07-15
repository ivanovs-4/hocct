{-# LANGUAGE FlexibleInstances, FlexibleContexts, TypeFamilies,
  MultiParamTypeClasses, OverlappingInstances, IncoherentInstances
  #-}
module HOCCT.ModelingAlgorithms.BRepBuilderAPI_Transform.Cast where
import Foreign.Ptr
import FFICXX.Runtime.Cast
import System.IO.Unsafe
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Transform.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Transform.Interface

instance (IBRepBuilderAPI_Transform a, FPtr a) =>
         Castable (a) (Ptr RawBRepBuilderAPI_Transform)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))

instance () =>
         Castable (BRepBuilderAPI_Transform)
           (Ptr RawBRepBuilderAPI_Transform)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))
