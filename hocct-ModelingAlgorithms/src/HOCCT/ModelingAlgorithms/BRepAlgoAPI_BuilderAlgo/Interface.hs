{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingAlgorithms.BRepAlgoAPI_BuilderAlgo.Interface
       where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_BuilderAlgo.RawType
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_Algo.Interface

class (IBRepAlgoAPI_Algo a) => IBRepAlgoAPI_BuilderAlgo a where

upcastBRepAlgoAPI_BuilderAlgo ::
                              forall a . (FPtr a, IBRepAlgoAPI_BuilderAlgo a) =>
                                a -> BRepAlgoAPI_BuilderAlgo
upcastBRepAlgoAPI_BuilderAlgo h
  = let fh = get_fptr h
        fh2 :: Ptr RawBRepAlgoAPI_BuilderAlgo = castPtr fh
      in cast_fptr_to_obj fh2

downcastBRepAlgoAPI_BuilderAlgo ::
                                forall a . (FPtr a, IBRepAlgoAPI_BuilderAlgo a) =>
                                  BRepAlgoAPI_BuilderAlgo -> a
downcastBRepAlgoAPI_BuilderAlgo h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
