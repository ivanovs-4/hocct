{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingAlgorithms.BRepAlgoAPI_Fuse.Interface where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_Fuse.RawType
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_BooleanOperation.Interface

class (IBRepAlgoAPI_BooleanOperation a) => IBRepAlgoAPI_Fuse a
      where

upcastBRepAlgoAPI_Fuse ::
                       forall a . (FPtr a, IBRepAlgoAPI_Fuse a) => a -> BRepAlgoAPI_Fuse
upcastBRepAlgoAPI_Fuse h
  = let fh = get_fptr h
        fh2 :: Ptr RawBRepAlgoAPI_Fuse = castPtr fh
      in cast_fptr_to_obj fh2

downcastBRepAlgoAPI_Fuse ::
                         forall a . (FPtr a, IBRepAlgoAPI_Fuse a) => BRepAlgoAPI_Fuse -> a
downcastBRepAlgoAPI_Fuse h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
