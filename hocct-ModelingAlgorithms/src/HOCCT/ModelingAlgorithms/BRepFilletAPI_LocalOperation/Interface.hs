{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingAlgorithms.BRepFilletAPI_LocalOperation.Interface
       where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingAlgorithms.BRepFilletAPI_LocalOperation.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.Interface

class (IBRepBuilderAPI_MakeShape a) =>
      IBRepFilletAPI_LocalOperation a where

upcastBRepFilletAPI_LocalOperation ::
                                   forall a . (FPtr a, IBRepFilletAPI_LocalOperation a) =>
                                     a -> BRepFilletAPI_LocalOperation
upcastBRepFilletAPI_LocalOperation h
  = let fh = get_fptr h
        fh2 :: Ptr RawBRepFilletAPI_LocalOperation = castPtr fh
      in cast_fptr_to_obj fh2

downcastBRepFilletAPI_LocalOperation ::
                                     forall a . (FPtr a, IBRepFilletAPI_LocalOperation a) =>
                                       BRepFilletAPI_LocalOperation -> a
downcastBRepFilletAPI_LocalOperation h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
