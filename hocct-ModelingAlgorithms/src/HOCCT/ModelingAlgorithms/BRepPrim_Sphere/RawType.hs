{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingAlgorithms.BRepPrim_Sphere.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawBRepPrim_Sphere

newtype BRepPrim_Sphere = BRepPrim_Sphere (Ptr RawBRepPrim_Sphere)
                            deriving (Eq, Ord, Show)

instance () => FPtr (BRepPrim_Sphere) where
        type Raw BRepPrim_Sphere = RawBRepPrim_Sphere
        get_fptr (BRepPrim_Sphere ptr) = ptr
        cast_fptr_to_obj = BRepPrim_Sphere
