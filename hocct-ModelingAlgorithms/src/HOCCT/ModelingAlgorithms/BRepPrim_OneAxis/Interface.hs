{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingAlgorithms.BRepPrim_OneAxis.Interface where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingAlgorithms.BRepPrim_OneAxis.RawType

class () => IBRepPrim_OneAxis a where

upcastBRepPrim_OneAxis ::
                       forall a . (FPtr a, IBRepPrim_OneAxis a) => a -> BRepPrim_OneAxis
upcastBRepPrim_OneAxis h
  = let fh = get_fptr h
        fh2 :: Ptr RawBRepPrim_OneAxis = castPtr fh
      in cast_fptr_to_obj fh2

downcastBRepPrim_OneAxis ::
                         forall a . (FPtr a, IBRepPrim_OneAxis a) => BRepPrim_OneAxis -> a
downcastBRepPrim_OneAxis h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
