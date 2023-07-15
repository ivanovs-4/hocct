{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingData.TopoDS_Solid.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawTopoDS_Solid

newtype TopoDS_Solid = TopoDS_Solid (Ptr RawTopoDS_Solid)
                         deriving (Eq, Ord, Show)

instance () => FPtr (TopoDS_Solid) where
        type Raw TopoDS_Solid = RawTopoDS_Solid
        get_fptr (TopoDS_Solid ptr) = ptr
        cast_fptr_to_obj = TopoDS_Solid
