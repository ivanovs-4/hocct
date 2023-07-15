{-# LANGUAGE FlexibleInstances, FlexibleContexts, TypeFamilies,
  MultiParamTypeClasses, OverlappingInstances, IncoherentInstances
  #-}
module HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeSolid.Cast where
import Foreign.Ptr
import FFICXX.Runtime.Cast
import System.IO.Unsafe
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeSolid.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeSolid.Interface

instance (IBRepBuilderAPI_MakeSolid a, FPtr a) =>
         Castable (a) (Ptr RawBRepBuilderAPI_MakeSolid)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))

instance () =>
         Castable (BRepBuilderAPI_MakeSolid)
           (Ptr RawBRepBuilderAPI_MakeSolid)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))
