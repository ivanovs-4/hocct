{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingAlgorithms.BRepPrim_Revolution.Interface where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingAlgorithms.BRepPrim_Revolution.RawType
import HOCCT.ModelingAlgorithms.BRepPrim_OneAxis.Interface

class (IBRepPrim_OneAxis a) => IBRepPrim_Revolution a where

upcastBRepPrim_Revolution ::
                          forall a . (FPtr a, IBRepPrim_Revolution a) =>
                            a -> BRepPrim_Revolution
upcastBRepPrim_Revolution h
  = let fh = get_fptr h
        fh2 :: Ptr RawBRepPrim_Revolution = castPtr fh
      in cast_fptr_to_obj fh2

downcastBRepPrim_Revolution ::
                            forall a . (FPtr a, IBRepPrim_Revolution a) =>
                              BRepPrim_Revolution -> a
downcastBRepPrim_Revolution h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
