{-# LANGUAGE FlexibleInstances, FlexibleContexts, TypeFamilies,
  MultiParamTypeClasses, OverlappingInstances, IncoherentInstances
  #-}
module HOCCT.Foundation.GP_Pnt.Cast where
import Foreign.Ptr
import FFICXX.Runtime.Cast
import System.IO.Unsafe
import HOCCT.Foundation.GP_Pnt.RawType
import HOCCT.Foundation.GP_Pnt.Interface

instance (IGP_Pnt a, FPtr a) => Castable (a) (Ptr RawGP_Pnt) where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))

instance () => Castable (GP_Pnt) (Ptr RawGP_Pnt) where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))
