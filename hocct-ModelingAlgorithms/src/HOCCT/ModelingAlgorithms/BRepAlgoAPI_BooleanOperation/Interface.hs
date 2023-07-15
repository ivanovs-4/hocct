{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingAlgorithms.BRepAlgoAPI_BooleanOperation.Interface
       where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_BooleanOperation.RawType
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_BuilderAlgo.Interface

class (IBRepAlgoAPI_BuilderAlgo a) =>
      IBRepAlgoAPI_BooleanOperation a where
        build :: () => a -> IO ()

upcastBRepAlgoAPI_BooleanOperation ::
                                   forall a . (FPtr a, IBRepAlgoAPI_BooleanOperation a) =>
                                     a -> BRepAlgoAPI_BooleanOperation
upcastBRepAlgoAPI_BooleanOperation h
  = let fh = get_fptr h
        fh2 :: Ptr RawBRepAlgoAPI_BooleanOperation = castPtr fh
      in cast_fptr_to_obj fh2

downcastBRepAlgoAPI_BooleanOperation ::
                                     forall a . (FPtr a, IBRepAlgoAPI_BooleanOperation a) =>
                                       BRepAlgoAPI_BooleanOperation -> a
downcastBRepAlgoAPI_BooleanOperation h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
