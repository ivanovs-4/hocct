{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingAlgorithms.BRepBuilderAPI_Copy.Interface where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Copy.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_ModifyShape.Interface

class (IBRepBuilderAPI_ModifyShape a) => IBRepBuilderAPI_Copy a
      where

upcastBRepBuilderAPI_Copy ::
                          forall a . (FPtr a, IBRepBuilderAPI_Copy a) =>
                            a -> BRepBuilderAPI_Copy
upcastBRepBuilderAPI_Copy h
  = let fh = get_fptr h
        fh2 :: Ptr RawBRepBuilderAPI_Copy = castPtr fh
      in cast_fptr_to_obj fh2

downcastBRepBuilderAPI_Copy ::
                            forall a . (FPtr a, IBRepBuilderAPI_Copy a) =>
                              BRepBuilderAPI_Copy -> a
downcastBRepBuilderAPI_Copy h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
