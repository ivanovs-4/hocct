{-# LANGUAGE FlexibleInstances, FlexibleContexts, TypeFamilies,
  MultiParamTypeClasses, OverlappingInstances, IncoherentInstances
  #-}
module HOCCT.ModelingData.GC_MakeSegment.Cast where
import Foreign.Ptr
import FFICXX.Runtime.Cast
import System.IO.Unsafe
import HOCCT.ModelingData.GC_MakeSegment.RawType
import HOCCT.ModelingData.GC_MakeSegment.Interface

instance (IGC_MakeSegment a, FPtr a) =>
         Castable (a) (Ptr RawGC_MakeSegment)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))

instance () => Castable (GC_MakeSegment) (Ptr RawGC_MakeSegment)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))
