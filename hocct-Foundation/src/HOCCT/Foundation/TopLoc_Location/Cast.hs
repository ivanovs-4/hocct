{-# LANGUAGE FlexibleInstances, FlexibleContexts, TypeFamilies,
  MultiParamTypeClasses, OverlappingInstances, IncoherentInstances
  #-}
module HOCCT.Foundation.TopLoc_Location.Cast where
import Foreign.Ptr
import FFICXX.Runtime.Cast
import System.IO.Unsafe
import HOCCT.Foundation.TopLoc_Location.RawType
import HOCCT.Foundation.TopLoc_Location.Interface

instance (ITopLoc_Location a, FPtr a) =>
         Castable (a) (Ptr RawTopLoc_Location)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))

instance () => Castable (TopLoc_Location) (Ptr RawTopLoc_Location)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))
