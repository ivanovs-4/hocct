{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingAlgorithms.BRepPrim_Revolution.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawBRepPrim_Revolution

newtype BRepPrim_Revolution = BRepPrim_Revolution (Ptr
                                                     RawBRepPrim_Revolution)
                                deriving (Eq, Ord, Show)

instance () => FPtr (BRepPrim_Revolution) where
        type Raw BRepPrim_Revolution = RawBRepPrim_Revolution
        get_fptr (BRepPrim_Revolution ptr) = ptr
        cast_fptr_to_obj = BRepPrim_Revolution
