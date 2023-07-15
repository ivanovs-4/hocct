{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingAlgorithms.BRepOffsetAPI_ThruSections.Interface
       where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingAlgorithms.BRepOffsetAPI_ThruSections.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.Interface

class (IBRepBuilderAPI_MakeShape a) =>
      IBRepOffsetAPI_ThruSections a where

upcastBRepOffsetAPI_ThruSections ::
                                 forall a . (FPtr a, IBRepOffsetAPI_ThruSections a) =>
                                   a -> BRepOffsetAPI_ThruSections
upcastBRepOffsetAPI_ThruSections h
  = let fh = get_fptr h
        fh2 :: Ptr RawBRepOffsetAPI_ThruSections = castPtr fh
      in cast_fptr_to_obj fh2

downcastBRepOffsetAPI_ThruSections ::
                                   forall a . (FPtr a, IBRepOffsetAPI_ThruSections a) =>
                                     BRepOffsetAPI_ThruSections -> a
downcastBRepOffsetAPI_ThruSections h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
