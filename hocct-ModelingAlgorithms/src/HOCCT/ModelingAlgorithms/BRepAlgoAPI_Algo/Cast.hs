{-# LANGUAGE FlexibleInstances, FlexibleContexts, TypeFamilies,
  MultiParamTypeClasses, OverlappingInstances, IncoherentInstances
  #-}
module HOCCT.ModelingAlgorithms.BRepAlgoAPI_Algo.Cast where
import Foreign.Ptr
import FFICXX.Runtime.Cast
import System.IO.Unsafe
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_Algo.RawType
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_Algo.Interface

instance (IBRepAlgoAPI_Algo a, FPtr a) =>
         Castable (a) (Ptr RawBRepAlgoAPI_Algo)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))

instance () =>
         Castable (BRepAlgoAPI_Algo) (Ptr RawBRepAlgoAPI_Algo)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))
