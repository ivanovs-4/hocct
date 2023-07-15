{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingData.TopoDS_Wire.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawTopoDS_Wire

newtype TopoDS_Wire = TopoDS_Wire (Ptr RawTopoDS_Wire)
                        deriving (Eq, Ord, Show)

instance () => FPtr (TopoDS_Wire) where
        type Raw TopoDS_Wire = RawTopoDS_Wire
        get_fptr (TopoDS_Wire ptr) = ptr
        cast_fptr_to_obj = TopoDS_Wire
