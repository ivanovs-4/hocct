{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeEdge.RawType
       where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawBRepBuilderAPI_MakeEdge

newtype BRepBuilderAPI_MakeEdge = BRepBuilderAPI_MakeEdge (Ptr
                                                             RawBRepBuilderAPI_MakeEdge)
                                    deriving (Eq, Ord, Show)

instance () => FPtr (BRepBuilderAPI_MakeEdge) where
        type Raw BRepBuilderAPI_MakeEdge = RawBRepBuilderAPI_MakeEdge
        get_fptr (BRepBuilderAPI_MakeEdge ptr) = ptr
        cast_fptr_to_obj = BRepBuilderAPI_MakeEdge
