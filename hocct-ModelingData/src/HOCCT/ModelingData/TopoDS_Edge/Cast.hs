{-# LANGUAGE FlexibleInstances, FlexibleContexts, TypeFamilies,
  MultiParamTypeClasses, OverlappingInstances, IncoherentInstances
  #-}
module HOCCT.ModelingData.TopoDS_Edge.Cast where
import Foreign.Ptr
import FFICXX.Runtime.Cast
import System.IO.Unsafe
import HOCCT.ModelingData.TopoDS_Edge.RawType
import HOCCT.ModelingData.TopoDS_Edge.Interface

instance (ITopoDS_Edge a, FPtr a) =>
         Castable (a) (Ptr RawTopoDS_Edge)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))

instance () => Castable (TopoDS_Edge) (Ptr RawTopoDS_Edge) where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))
