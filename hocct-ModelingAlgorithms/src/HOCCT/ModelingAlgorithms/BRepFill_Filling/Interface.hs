{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingAlgorithms.BRepFill_Filling.Interface where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingAlgorithms.BRepFill_Filling.RawType

class () => IBRepFill_Filling a where

upcastBRepFill_Filling ::
                       forall a . (FPtr a, IBRepFill_Filling a) => a -> BRepFill_Filling
upcastBRepFill_Filling h
  = let fh = get_fptr h
        fh2 :: Ptr RawBRepFill_Filling = castPtr fh
      in cast_fptr_to_obj fh2

downcastBRepFill_Filling ::
                         forall a . (FPtr a, IBRepFill_Filling a) => BRepFill_Filling -> a
downcastBRepFill_Filling h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
