{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingAlgorithms.BRepOffsetAPI_MakeOffsetShape.Interface
       where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingAlgorithms.BRepOffsetAPI_MakeOffsetShape.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.Interface

class (IBRepBuilderAPI_MakeShape a) =>
      IBRepOffsetAPI_MakeOffsetShape a where

upcastBRepOffsetAPI_MakeOffsetShape ::
                                    forall a . (FPtr a, IBRepOffsetAPI_MakeOffsetShape a) =>
                                      a -> BRepOffsetAPI_MakeOffsetShape
upcastBRepOffsetAPI_MakeOffsetShape h
  = let fh = get_fptr h
        fh2 :: Ptr RawBRepOffsetAPI_MakeOffsetShape = castPtr fh
      in cast_fptr_to_obj fh2

downcastBRepOffsetAPI_MakeOffsetShape ::
                                      forall a . (FPtr a, IBRepOffsetAPI_MakeOffsetShape a) =>
                                        BRepOffsetAPI_MakeOffsetShape -> a
downcastBRepOffsetAPI_MakeOffsetShape h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
