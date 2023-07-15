{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingAlgorithms.BRepBuilderAPI_Transform.Interface
       where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Transform.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_ModifyShape.Interface

class (IBRepBuilderAPI_ModifyShape a) =>
      IBRepBuilderAPI_Transform a where

upcastBRepBuilderAPI_Transform ::
                               forall a . (FPtr a, IBRepBuilderAPI_Transform a) =>
                                 a -> BRepBuilderAPI_Transform
upcastBRepBuilderAPI_Transform h
  = let fh = get_fptr h
        fh2 :: Ptr RawBRepBuilderAPI_Transform = castPtr fh
      in cast_fptr_to_obj fh2

downcastBRepBuilderAPI_Transform ::
                                 forall a . (FPtr a, IBRepBuilderAPI_Transform a) =>
                                   BRepBuilderAPI_Transform -> a
downcastBRepBuilderAPI_Transform h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
