{-# LANGUAGE FlexibleInstances, FlexibleContexts, TypeFamilies,
  MultiParamTypeClasses, OverlappingInstances, IncoherentInstances
  #-}
module HOCCT.ModelingAlgorithms.BRepAlgoAPI_Common.Cast where
import Foreign.Ptr
import FFICXX.Runtime.Cast
import System.IO.Unsafe
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_Common.RawType
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_Common.Interface

instance (IBRepAlgoAPI_Common a, FPtr a) =>
         Castable (a) (Ptr RawBRepAlgoAPI_Common)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))

instance () =>
         Castable (BRepAlgoAPI_Common) (Ptr RawBRepAlgoAPI_Common)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))
