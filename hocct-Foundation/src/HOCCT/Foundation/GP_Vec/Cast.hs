{-# LANGUAGE FlexibleInstances, FlexibleContexts, TypeFamilies,
  MultiParamTypeClasses, OverlappingInstances, IncoherentInstances
  #-}
module HOCCT.Foundation.GP_Vec.Cast where
import Foreign.Ptr
import FFICXX.Runtime.Cast
import System.IO.Unsafe
import HOCCT.Foundation.GP_Vec.RawType
import HOCCT.Foundation.GP_Vec.Interface

instance (IGP_Vec a, FPtr a) => Castable (a) (Ptr RawGP_Vec) where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))

instance () => Castable (GP_Vec) (Ptr RawGP_Vec) where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))
