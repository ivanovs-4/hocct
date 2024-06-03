{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingAlgorithms.BRepFilletAPI_MakeFillet.Interface
       where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingAlgorithms.BRepFilletAPI_MakeFillet.RawType
import HOCCT.ModelingAlgorithms.BRepFilletAPI_LocalOperation.Interface

class (IBRepFilletAPI_LocalOperation a) =>
      IBRepFilletAPI_MakeFillet a where

upcastBRepFilletAPI_MakeFillet ::
                               forall a . (FPtr a, IBRepFilletAPI_MakeFillet a) =>
                                 a -> BRepFilletAPI_MakeFillet
upcastBRepFilletAPI_MakeFillet h
  = let fh = get_fptr h
        fh2 :: Ptr RawBRepFilletAPI_MakeFillet = castPtr fh
      in cast_fptr_to_obj fh2

downcastBRepFilletAPI_MakeFillet ::
                                 forall a . (FPtr a, IBRepFilletAPI_MakeFillet a) =>
                                   BRepFilletAPI_MakeFillet -> a
downcastBRepFilletAPI_MakeFillet h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
