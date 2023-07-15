{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingAlgorithms.BRepAlgoAPI_Cut.Interface where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_Cut.RawType
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_BooleanOperation.Interface

class (IBRepAlgoAPI_BooleanOperation a) => IBRepAlgoAPI_Cut a where

upcastBRepAlgoAPI_Cut ::
                      forall a . (FPtr a, IBRepAlgoAPI_Cut a) => a -> BRepAlgoAPI_Cut
upcastBRepAlgoAPI_Cut h
  = let fh = get_fptr h
        fh2 :: Ptr RawBRepAlgoAPI_Cut = castPtr fh
      in cast_fptr_to_obj fh2

downcastBRepAlgoAPI_Cut ::
                        forall a . (FPtr a, IBRepAlgoAPI_Cut a) => BRepAlgoAPI_Cut -> a
downcastBRepAlgoAPI_Cut h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
