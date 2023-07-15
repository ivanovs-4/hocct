{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingAlgorithms.BRepAlgoAPI_Algo.Interface where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_Algo.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.Interface

class (IBRepBuilderAPI_MakeShape a) => IBRepAlgoAPI_Algo a where

upcastBRepAlgoAPI_Algo ::
                       forall a . (FPtr a, IBRepAlgoAPI_Algo a) => a -> BRepAlgoAPI_Algo
upcastBRepAlgoAPI_Algo h
  = let fh = get_fptr h
        fh2 :: Ptr RawBRepAlgoAPI_Algo = castPtr fh
      in cast_fptr_to_obj fh2

downcastBRepAlgoAPI_Algo ::
                         forall a . (FPtr a, IBRepAlgoAPI_Algo a) => BRepAlgoAPI_Algo -> a
downcastBRepAlgoAPI_Algo h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
