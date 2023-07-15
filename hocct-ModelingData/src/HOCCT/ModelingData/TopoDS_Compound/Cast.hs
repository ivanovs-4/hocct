{-# LANGUAGE FlexibleInstances, FlexibleContexts, TypeFamilies,
  MultiParamTypeClasses, OverlappingInstances, IncoherentInstances
  #-}
module HOCCT.ModelingData.TopoDS_Compound.Cast where
import Foreign.Ptr
import FFICXX.Runtime.Cast
import System.IO.Unsafe
import HOCCT.ModelingData.TopoDS_Compound.RawType
import HOCCT.ModelingData.TopoDS_Compound.Interface

instance (ITopoDS_Compound a, FPtr a) =>
         Castable (a) (Ptr RawTopoDS_Compound)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))

instance () => Castable (TopoDS_Compound) (Ptr RawTopoDS_Compound)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))
