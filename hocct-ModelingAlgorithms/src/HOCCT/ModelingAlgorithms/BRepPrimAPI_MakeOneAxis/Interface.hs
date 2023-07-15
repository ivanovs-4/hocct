{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeOneAxis.Interface
       where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeOneAxis.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.Interface

class (IBRepBuilderAPI_MakeShape a) => IBRepPrimAPI_MakeOneAxis a
      where

upcastBRepPrimAPI_MakeOneAxis ::
                              forall a . (FPtr a, IBRepPrimAPI_MakeOneAxis a) =>
                                a -> BRepPrimAPI_MakeOneAxis
upcastBRepPrimAPI_MakeOneAxis h
  = let fh = get_fptr h
        fh2 :: Ptr RawBRepPrimAPI_MakeOneAxis = castPtr fh
      in cast_fptr_to_obj fh2

downcastBRepPrimAPI_MakeOneAxis ::
                                forall a . (FPtr a, IBRepPrimAPI_MakeOneAxis a) =>
                                  BRepPrimAPI_MakeOneAxis -> a
downcastBRepPrimAPI_MakeOneAxis h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
