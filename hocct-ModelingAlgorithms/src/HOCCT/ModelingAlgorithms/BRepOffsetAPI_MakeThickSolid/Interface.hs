{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingAlgorithms.BRepOffsetAPI_MakeThickSolid.Interface
       where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingAlgorithms.BRepOffsetAPI_MakeThickSolid.RawType
import HOCCT.ModelingAlgorithms.BRepOffsetAPI_MakeOffsetShape.Interface

class (IBRepOffsetAPI_MakeOffsetShape a) =>
      IBRepOffsetAPI_MakeThickSolid a where

upcastBRepOffsetAPI_MakeThickSolid ::
                                   forall a . (FPtr a, IBRepOffsetAPI_MakeThickSolid a) =>
                                     a -> BRepOffsetAPI_MakeThickSolid
upcastBRepOffsetAPI_MakeThickSolid h
  = let fh = get_fptr h
        fh2 :: Ptr RawBRepOffsetAPI_MakeThickSolid = castPtr fh
      in cast_fptr_to_obj fh2

downcastBRepOffsetAPI_MakeThickSolid ::
                                     forall a . (FPtr a, IBRepOffsetAPI_MakeThickSolid a) =>
                                       BRepOffsetAPI_MakeThickSolid -> a
downcastBRepOffsetAPI_MakeThickSolid h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
