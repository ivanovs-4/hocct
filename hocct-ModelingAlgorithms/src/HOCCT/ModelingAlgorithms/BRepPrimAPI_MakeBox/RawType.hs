{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeBox.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawBRepPrimAPI_MakeBox

newtype BRepPrimAPI_MakeBox = BRepPrimAPI_MakeBox (Ptr
                                                     RawBRepPrimAPI_MakeBox)
                                deriving (Eq, Ord, Show)

instance () => FPtr (BRepPrimAPI_MakeBox) where
        type Raw BRepPrimAPI_MakeBox = RawBRepPrimAPI_MakeBox
        get_fptr (BRepPrimAPI_MakeBox ptr) = ptr
        cast_fptr_to_obj = BRepPrimAPI_MakeBox
