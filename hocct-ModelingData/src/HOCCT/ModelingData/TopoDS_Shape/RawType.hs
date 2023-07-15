{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingData.TopoDS_Shape.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawTopoDS_Shape

newtype TopoDS_Shape = TopoDS_Shape (Ptr RawTopoDS_Shape)
                         deriving (Eq, Ord, Show)

instance () => FPtr (TopoDS_Shape) where
        type Raw TopoDS_Shape = RawTopoDS_Shape
        get_fptr (TopoDS_Shape ptr) = ptr
        cast_fptr_to_obj = TopoDS_Shape
