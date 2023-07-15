{-# LANGUAGE FlexibleInstances, FlexibleContexts, TypeFamilies,
  MultiParamTypeClasses, OverlappingInstances, IncoherentInstances
  #-}
module HOCCT.Foundation.GP_Dir.Cast where
import Foreign.Ptr
import FFICXX.Runtime.Cast
import System.IO.Unsafe
import HOCCT.Foundation.GP_Dir.RawType
import HOCCT.Foundation.GP_Dir.Interface

instance (IGP_Dir a, FPtr a) => Castable (a) (Ptr RawGP_Dir) where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))

instance () => Castable (GP_Dir) (Ptr RawGP_Dir) where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))
