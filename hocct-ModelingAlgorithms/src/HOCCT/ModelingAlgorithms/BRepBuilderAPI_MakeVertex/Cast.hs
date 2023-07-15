{-# LANGUAGE FlexibleInstances, FlexibleContexts, TypeFamilies,
  MultiParamTypeClasses, OverlappingInstances, IncoherentInstances
  #-}
module HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeVertex.Cast
       where
import Foreign.Ptr
import FFICXX.Runtime.Cast
import System.IO.Unsafe
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeVertex.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeVertex.Interface

instance (IBRepBuilderAPI_MakeVertex a, FPtr a) =>
         Castable (a) (Ptr RawBRepBuilderAPI_MakeVertex)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))

instance () =>
         Castable (BRepBuilderAPI_MakeVertex)
           (Ptr RawBRepBuilderAPI_MakeVertex)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))
