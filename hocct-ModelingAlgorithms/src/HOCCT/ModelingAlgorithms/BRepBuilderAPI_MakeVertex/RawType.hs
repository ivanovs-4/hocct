{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeVertex.RawType
       where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawBRepBuilderAPI_MakeVertex

newtype BRepBuilderAPI_MakeVertex = BRepBuilderAPI_MakeVertex (Ptr
                                                                 RawBRepBuilderAPI_MakeVertex)
                                      deriving (Eq, Ord, Show)

instance () => FPtr (BRepBuilderAPI_MakeVertex) where
        type Raw BRepBuilderAPI_MakeVertex = RawBRepBuilderAPI_MakeVertex
        get_fptr (BRepBuilderAPI_MakeVertex ptr) = ptr
        cast_fptr_to_obj = BRepBuilderAPI_MakeVertex
