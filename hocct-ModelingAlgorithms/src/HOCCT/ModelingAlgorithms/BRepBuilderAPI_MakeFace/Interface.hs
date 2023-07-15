{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeFace.Interface
       where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeFace.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.Interface

class (IBRepBuilderAPI_MakeShape a) => IBRepBuilderAPI_MakeFace a
      where

upcastBRepBuilderAPI_MakeFace ::
                              forall a . (FPtr a, IBRepBuilderAPI_MakeFace a) =>
                                a -> BRepBuilderAPI_MakeFace
upcastBRepBuilderAPI_MakeFace h
  = let fh = get_fptr h
        fh2 :: Ptr RawBRepBuilderAPI_MakeFace = castPtr fh
      in cast_fptr_to_obj fh2

downcastBRepBuilderAPI_MakeFace ::
                                forall a . (FPtr a, IBRepBuilderAPI_MakeFace a) =>
                                  BRepBuilderAPI_MakeFace -> a
downcastBRepBuilderAPI_MakeFace h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
