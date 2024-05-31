{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingAlgorithms.BRepPrim_Torus.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawBRepPrim_Torus

newtype BRepPrim_Torus = BRepPrim_Torus (Ptr RawBRepPrim_Torus)
                           deriving (Eq, Ord, Show)

instance () => FPtr (BRepPrim_Torus) where
        type Raw BRepPrim_Torus = RawBRepPrim_Torus
        get_fptr (BRepPrim_Torus ptr) = ptr
        cast_fptr_to_obj = BRepPrim_Torus
