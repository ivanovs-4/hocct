{-# LANGUAGE FlexibleInstances, FlexibleContexts, TypeFamilies,
  MultiParamTypeClasses, OverlappingInstances, IncoherentInstances
  #-}
module HOCCT.ModelingAlgorithms.BRepAlgoAPI_Splitter.Cast where
import Foreign.Ptr
import FFICXX.Runtime.Cast
import System.IO.Unsafe
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_Splitter.RawType
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_Splitter.Interface

instance (IBRepAlgoAPI_Splitter a, FPtr a) =>
         Castable (a) (Ptr RawBRepAlgoAPI_Splitter)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))

instance () =>
         Castable (BRepAlgoAPI_Splitter) (Ptr RawBRepAlgoAPI_Splitter)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))
