{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingAlgorithms.BRepBuilderAPI_ModifyShape.RawType
       where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawBRepBuilderAPI_ModifyShape

newtype BRepBuilderAPI_ModifyShape = BRepBuilderAPI_ModifyShape (Ptr
                                                                   RawBRepBuilderAPI_ModifyShape)
                                       deriving (Eq, Ord, Show)

instance () => FPtr (BRepBuilderAPI_ModifyShape) where
        type Raw BRepBuilderAPI_ModifyShape = RawBRepBuilderAPI_ModifyShape
        get_fptr (BRepBuilderAPI_ModifyShape ptr) = ptr
        cast_fptr_to_obj = BRepBuilderAPI_ModifyShape
