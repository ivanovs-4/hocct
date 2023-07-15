{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeVertex.Interface
       where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeVertex.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.Interface

class (IBRepBuilderAPI_MakeShape a) => IBRepBuilderAPI_MakeVertex a
      where

upcastBRepBuilderAPI_MakeVertex ::
                                forall a . (FPtr a, IBRepBuilderAPI_MakeVertex a) =>
                                  a -> BRepBuilderAPI_MakeVertex
upcastBRepBuilderAPI_MakeVertex h
  = let fh = get_fptr h
        fh2 :: Ptr RawBRepBuilderAPI_MakeVertex = castPtr fh
      in cast_fptr_to_obj fh2

downcastBRepBuilderAPI_MakeVertex ::
                                  forall a . (FPtr a, IBRepBuilderAPI_MakeVertex a) =>
                                    BRepBuilderAPI_MakeVertex -> a
downcastBRepBuilderAPI_MakeVertex h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
