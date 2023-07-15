{-# LANGUAGE FlexibleInstances, FlexibleContexts, TypeFamilies,
  MultiParamTypeClasses, OverlappingInstances, IncoherentInstances
  #-}
module HOCCT.Foundation.GP_Pln.Cast where
import Foreign.Ptr
import FFICXX.Runtime.Cast
import System.IO.Unsafe
import HOCCT.Foundation.GP_Pln.RawType
import HOCCT.Foundation.GP_Pln.Interface

instance (IGP_Pln a, FPtr a) => Castable (a) (Ptr RawGP_Pln) where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))

instance () => Castable (GP_Pln) (Ptr RawGP_Pln) where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))
