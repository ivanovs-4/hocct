{-# LANGUAGE FlexibleInstances, FlexibleContexts, TypeFamilies,
  MultiParamTypeClasses, OverlappingInstances, IncoherentInstances
  #-}
module HOCCT.ModelingAlgorithms.BRepOffsetAPI_ThruSections.Cast
       where
import Foreign.Ptr
import FFICXX.Runtime.Cast
import System.IO.Unsafe
import HOCCT.ModelingAlgorithms.BRepOffsetAPI_ThruSections.RawType
import HOCCT.ModelingAlgorithms.BRepOffsetAPI_ThruSections.Interface

instance (IBRepOffsetAPI_ThruSections a, FPtr a) =>
         Castable (a) (Ptr RawBRepOffsetAPI_ThruSections)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))

instance () =>
         Castable (BRepOffsetAPI_ThruSections)
           (Ptr RawBRepOffsetAPI_ThruSections)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))
