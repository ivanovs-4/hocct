{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeWire.RawType
       where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawBRepBuilderAPI_MakeWire

newtype BRepBuilderAPI_MakeWire = BRepBuilderAPI_MakeWire (Ptr
                                                             RawBRepBuilderAPI_MakeWire)
                                    deriving (Eq, Ord, Show)

instance () => FPtr (BRepBuilderAPI_MakeWire) where
        type Raw BRepBuilderAPI_MakeWire = RawBRepBuilderAPI_MakeWire
        get_fptr (BRepBuilderAPI_MakeWire ptr) = ptr
        cast_fptr_to_obj = BRepBuilderAPI_MakeWire
