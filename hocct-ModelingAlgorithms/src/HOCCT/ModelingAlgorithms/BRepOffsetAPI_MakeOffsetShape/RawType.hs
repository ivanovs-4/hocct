{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingAlgorithms.BRepOffsetAPI_MakeOffsetShape.RawType
       where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawBRepOffsetAPI_MakeOffsetShape

newtype BRepOffsetAPI_MakeOffsetShape = BRepOffsetAPI_MakeOffsetShape (Ptr
                                                                         RawBRepOffsetAPI_MakeOffsetShape)
                                          deriving (Eq, Ord, Show)

instance () => FPtr (BRepOffsetAPI_MakeOffsetShape) where
        type Raw BRepOffsetAPI_MakeOffsetShape =
             RawBRepOffsetAPI_MakeOffsetShape
        get_fptr (BRepOffsetAPI_MakeOffsetShape ptr) = ptr
        cast_fptr_to_obj = BRepOffsetAPI_MakeOffsetShape
