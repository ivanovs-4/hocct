{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeOneAxis.RawType
       where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawBRepPrimAPI_MakeOneAxis

newtype BRepPrimAPI_MakeOneAxis = BRepPrimAPI_MakeOneAxis (Ptr
                                                             RawBRepPrimAPI_MakeOneAxis)
                                    deriving (Eq, Ord, Show)

instance () => FPtr (BRepPrimAPI_MakeOneAxis) where
        type Raw BRepPrimAPI_MakeOneAxis = RawBRepPrimAPI_MakeOneAxis
        get_fptr (BRepPrimAPI_MakeOneAxis ptr) = ptr
        cast_fptr_to_obj = BRepPrimAPI_MakeOneAxis
