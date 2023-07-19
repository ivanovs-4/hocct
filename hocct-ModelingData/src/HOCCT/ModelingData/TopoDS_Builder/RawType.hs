{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingData.TopoDS_Builder.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawTopoDS_Builder

newtype TopoDS_Builder = TopoDS_Builder (Ptr RawTopoDS_Builder)
                           deriving (Eq, Ord, Show)

instance () => FPtr (TopoDS_Builder) where
        type Raw TopoDS_Builder = RawTopoDS_Builder
        get_fptr (TopoDS_Builder ptr) = ptr
        cast_fptr_to_obj = TopoDS_Builder
