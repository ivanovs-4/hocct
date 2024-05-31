{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingAlgorithms.BRepPrim_Cylinder.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawBRepPrim_Cylinder

newtype BRepPrim_Cylinder = BRepPrim_Cylinder (Ptr
                                                 RawBRepPrim_Cylinder)
                              deriving (Eq, Ord, Show)

instance () => FPtr (BRepPrim_Cylinder) where
        type Raw BRepPrim_Cylinder = RawBRepPrim_Cylinder
        get_fptr (BRepPrim_Cylinder ptr) = ptr
        cast_fptr_to_obj = BRepPrim_Cylinder
