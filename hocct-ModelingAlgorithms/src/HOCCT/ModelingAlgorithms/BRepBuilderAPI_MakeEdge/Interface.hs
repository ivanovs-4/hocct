{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeEdge.Interface
       where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeEdge.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.Interface

class (IBRepBuilderAPI_MakeShape a) => IBRepBuilderAPI_MakeEdge a
      where

upcastBRepBuilderAPI_MakeEdge ::
                              forall a . (FPtr a, IBRepBuilderAPI_MakeEdge a) =>
                                a -> BRepBuilderAPI_MakeEdge
upcastBRepBuilderAPI_MakeEdge h
  = let fh = get_fptr h
        fh2 :: Ptr RawBRepBuilderAPI_MakeEdge = castPtr fh
      in cast_fptr_to_obj fh2

downcastBRepBuilderAPI_MakeEdge ::
                                forall a . (FPtr a, IBRepBuilderAPI_MakeEdge a) =>
                                  BRepBuilderAPI_MakeEdge -> a
downcastBRepBuilderAPI_MakeEdge h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
