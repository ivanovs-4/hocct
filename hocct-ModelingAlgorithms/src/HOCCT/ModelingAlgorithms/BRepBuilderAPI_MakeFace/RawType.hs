{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeFace.RawType
       where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawBRepBuilderAPI_MakeFace

newtype BRepBuilderAPI_MakeFace = BRepBuilderAPI_MakeFace (Ptr
                                                             RawBRepBuilderAPI_MakeFace)
                                    deriving (Eq, Ord, Show)

instance () => FPtr (BRepBuilderAPI_MakeFace) where
        type Raw BRepBuilderAPI_MakeFace = RawBRepBuilderAPI_MakeFace
        get_fptr (BRepBuilderAPI_MakeFace ptr) = ptr
        cast_fptr_to_obj = BRepBuilderAPI_MakeFace
