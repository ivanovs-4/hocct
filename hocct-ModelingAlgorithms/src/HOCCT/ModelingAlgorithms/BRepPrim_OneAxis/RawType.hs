{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingAlgorithms.BRepPrim_OneAxis.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawBRepPrim_OneAxis

newtype BRepPrim_OneAxis = BRepPrim_OneAxis (Ptr
                                               RawBRepPrim_OneAxis)
                             deriving (Eq, Ord, Show)

instance () => FPtr (BRepPrim_OneAxis) where
        type Raw BRepPrim_OneAxis = RawBRepPrim_OneAxis
        get_fptr (BRepPrim_OneAxis ptr) = ptr
        cast_fptr_to_obj = BRepPrim_OneAxis
