{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingAlgorithms.BRepBuilderAPI_Copy.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawBRepBuilderAPI_Copy

newtype BRepBuilderAPI_Copy = BRepBuilderAPI_Copy (Ptr
                                                     RawBRepBuilderAPI_Copy)
                                deriving (Eq, Ord, Show)

instance () => FPtr (BRepBuilderAPI_Copy) where
        type Raw BRepBuilderAPI_Copy = RawBRepBuilderAPI_Copy
        get_fptr (BRepBuilderAPI_Copy ptr) = ptr
        cast_fptr_to_obj = BRepBuilderAPI_Copy
