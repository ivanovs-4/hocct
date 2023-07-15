{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingAlgorithms.BRepAlgoAPI_Common.Interface where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_Common.RawType
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_BooleanOperation.Interface

class (IBRepAlgoAPI_BooleanOperation a) => IBRepAlgoAPI_Common a
      where

upcastBRepAlgoAPI_Common ::
                         forall a . (FPtr a, IBRepAlgoAPI_Common a) =>
                           a -> BRepAlgoAPI_Common
upcastBRepAlgoAPI_Common h
  = let fh = get_fptr h
        fh2 :: Ptr RawBRepAlgoAPI_Common = castPtr fh
      in cast_fptr_to_obj fh2

downcastBRepAlgoAPI_Common ::
                           forall a . (FPtr a, IBRepAlgoAPI_Common a) =>
                             BRepAlgoAPI_Common -> a
downcastBRepAlgoAPI_Common h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
