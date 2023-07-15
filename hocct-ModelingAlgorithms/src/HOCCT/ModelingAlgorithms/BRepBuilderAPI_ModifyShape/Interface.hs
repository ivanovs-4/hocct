{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingAlgorithms.BRepBuilderAPI_ModifyShape.Interface
       where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_ModifyShape.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.Interface

class (IBRepBuilderAPI_MakeShape a) =>
      IBRepBuilderAPI_ModifyShape a where

upcastBRepBuilderAPI_ModifyShape ::
                                 forall a . (FPtr a, IBRepBuilderAPI_ModifyShape a) =>
                                   a -> BRepBuilderAPI_ModifyShape
upcastBRepBuilderAPI_ModifyShape h
  = let fh = get_fptr h
        fh2 :: Ptr RawBRepBuilderAPI_ModifyShape = castPtr fh
      in cast_fptr_to_obj fh2

downcastBRepBuilderAPI_ModifyShape ::
                                   forall a . (FPtr a, IBRepBuilderAPI_ModifyShape a) =>
                                     BRepBuilderAPI_ModifyShape -> a
downcastBRepBuilderAPI_ModifyShape h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
