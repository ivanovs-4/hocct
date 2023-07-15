{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.RawType
       where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawBRepBuilderAPI_MakeShape

newtype BRepBuilderAPI_MakeShape = BRepBuilderAPI_MakeShape (Ptr
                                                               RawBRepBuilderAPI_MakeShape)
                                     deriving (Eq, Ord, Show)

instance () => FPtr (BRepBuilderAPI_MakeShape) where
        type Raw BRepBuilderAPI_MakeShape = RawBRepBuilderAPI_MakeShape
        get_fptr (BRepBuilderAPI_MakeShape ptr) = ptr
        cast_fptr_to_obj = BRepBuilderAPI_MakeShape
