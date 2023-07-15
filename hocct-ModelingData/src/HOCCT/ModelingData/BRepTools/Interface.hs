{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingData.BRepTools.Interface where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingData.BRepTools.RawType

class () => IBRepTools a where

upcastBRepTools ::
                forall a . (FPtr a, IBRepTools a) => a -> BRepTools
upcastBRepTools h
  = let fh = get_fptr h
        fh2 :: Ptr RawBRepTools = castPtr fh
      in cast_fptr_to_obj fh2

downcastBRepTools ::
                  forall a . (FPtr a, IBRepTools a) => BRepTools -> a
downcastBRepTools h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
