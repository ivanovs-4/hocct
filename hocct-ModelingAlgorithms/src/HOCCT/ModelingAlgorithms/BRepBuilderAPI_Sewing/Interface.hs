{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingAlgorithms.BRepBuilderAPI_Sewing.Interface
       where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Sewing.RawType

class () => IBRepBuilderAPI_Sewing a where

upcastBRepBuilderAPI_Sewing ::
                            forall a . (FPtr a, IBRepBuilderAPI_Sewing a) =>
                              a -> BRepBuilderAPI_Sewing
upcastBRepBuilderAPI_Sewing h
  = let fh = get_fptr h
        fh2 :: Ptr RawBRepBuilderAPI_Sewing = castPtr fh
      in cast_fptr_to_obj fh2

downcastBRepBuilderAPI_Sewing ::
                              forall a . (FPtr a, IBRepBuilderAPI_Sewing a) =>
                                BRepBuilderAPI_Sewing -> a
downcastBRepBuilderAPI_Sewing h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
