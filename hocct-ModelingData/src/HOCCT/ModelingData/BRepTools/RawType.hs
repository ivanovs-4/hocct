{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingData.BRepTools.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawBRepTools

newtype BRepTools = BRepTools (Ptr RawBRepTools)
                      deriving (Eq, Ord, Show)

instance () => FPtr (BRepTools) where
        type Raw BRepTools = RawBRepTools
        get_fptr (BRepTools ptr) = ptr
        cast_fptr_to_obj = BRepTools
