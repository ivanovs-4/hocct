{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeSolid.Interface
       where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeSolid.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.Interface

class (IBRepBuilderAPI_MakeShape a) => IBRepBuilderAPI_MakeSolid a
      where

upcastBRepBuilderAPI_MakeSolid ::
                               forall a . (FPtr a, IBRepBuilderAPI_MakeSolid a) =>
                                 a -> BRepBuilderAPI_MakeSolid
upcastBRepBuilderAPI_MakeSolid h
  = let fh = get_fptr h
        fh2 :: Ptr RawBRepBuilderAPI_MakeSolid = castPtr fh
      in cast_fptr_to_obj fh2

downcastBRepBuilderAPI_MakeSolid ::
                                 forall a . (FPtr a, IBRepBuilderAPI_MakeSolid a) =>
                                   BRepBuilderAPI_MakeSolid -> a
downcastBRepBuilderAPI_MakeSolid h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
