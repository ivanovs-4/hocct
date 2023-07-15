{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingAlgorithms.BRepAlgoAPI_Splitter.Interface
       where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_Splitter.RawType
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_BuilderAlgo.Interface

class (IBRepAlgoAPI_BuilderAlgo a) => IBRepAlgoAPI_Splitter a where

upcastBRepAlgoAPI_Splitter ::
                           forall a . (FPtr a, IBRepAlgoAPI_Splitter a) =>
                             a -> BRepAlgoAPI_Splitter
upcastBRepAlgoAPI_Splitter h
  = let fh = get_fptr h
        fh2 :: Ptr RawBRepAlgoAPI_Splitter = castPtr fh
      in cast_fptr_to_obj fh2

downcastBRepAlgoAPI_Splitter ::
                             forall a . (FPtr a, IBRepAlgoAPI_Splitter a) =>
                               BRepAlgoAPI_Splitter -> a
downcastBRepAlgoAPI_Splitter h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
