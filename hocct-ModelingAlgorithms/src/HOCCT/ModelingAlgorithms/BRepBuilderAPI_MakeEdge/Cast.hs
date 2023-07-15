{-# LANGUAGE FlexibleInstances, FlexibleContexts, TypeFamilies,
  MultiParamTypeClasses, OverlappingInstances, IncoherentInstances
  #-}
module HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeEdge.Cast where
import Foreign.Ptr
import FFICXX.Runtime.Cast
import System.IO.Unsafe
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeEdge.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeEdge.Interface

instance (IBRepBuilderAPI_MakeEdge a, FPtr a) =>
         Castable (a) (Ptr RawBRepBuilderAPI_MakeEdge)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))

instance () =>
         Castable (BRepBuilderAPI_MakeEdge) (Ptr RawBRepBuilderAPI_MakeEdge)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))
