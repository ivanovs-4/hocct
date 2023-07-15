{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingAlgorithms.BRepBuilderAPI_Transform.RawType
       where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawBRepBuilderAPI_Transform

newtype BRepBuilderAPI_Transform = BRepBuilderAPI_Transform (Ptr
                                                               RawBRepBuilderAPI_Transform)
                                     deriving (Eq, Ord, Show)

instance () => FPtr (BRepBuilderAPI_Transform) where
        type Raw BRepBuilderAPI_Transform = RawBRepBuilderAPI_Transform
        get_fptr (BRepBuilderAPI_Transform ptr) = ptr
        cast_fptr_to_obj = BRepBuilderAPI_Transform
