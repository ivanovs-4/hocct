{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeWire.Interface
       where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeWire.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.Interface

class (IBRepBuilderAPI_MakeShape a) => IBRepBuilderAPI_MakeWire a
      where

upcastBRepBuilderAPI_MakeWire ::
                              forall a . (FPtr a, IBRepBuilderAPI_MakeWire a) =>
                                a -> BRepBuilderAPI_MakeWire
upcastBRepBuilderAPI_MakeWire h
  = let fh = get_fptr h
        fh2 :: Ptr RawBRepBuilderAPI_MakeWire = castPtr fh
      in cast_fptr_to_obj fh2

downcastBRepBuilderAPI_MakeWire ::
                                forall a . (FPtr a, IBRepBuilderAPI_MakeWire a) =>
                                  BRepBuilderAPI_MakeWire -> a
downcastBRepBuilderAPI_MakeWire h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
