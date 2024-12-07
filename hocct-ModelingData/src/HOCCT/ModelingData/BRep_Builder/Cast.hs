{-# LANGUAGE FlexibleInstances, FlexibleContexts, TypeFamilies,
  MultiParamTypeClasses, OverlappingInstances, IncoherentInstances
  #-}
module HOCCT.ModelingData.BRep_Builder.Cast where
import Foreign.Ptr
import FFICXX.Runtime.Cast
import System.IO.Unsafe
import HOCCT.ModelingData.BRep_Builder.RawType
import HOCCT.ModelingData.BRep_Builder.Interface

instance (IBRep_Builder a, FPtr a) =>
         Castable (a) (Ptr RawBRep_Builder)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))

instance () => Castable (BRep_Builder) (Ptr RawBRep_Builder) where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))
