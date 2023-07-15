{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingData.GC_MakeSegment.Interface where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingData.GC_MakeSegment.RawType
import HOCCT.ModelingData.GC_Root.Interface

class (IGC_Root a) => IGC_MakeSegment a where

upcastGC_MakeSegment ::
                     forall a . (FPtr a, IGC_MakeSegment a) => a -> GC_MakeSegment
upcastGC_MakeSegment h
  = let fh = get_fptr h
        fh2 :: Ptr RawGC_MakeSegment = castPtr fh
      in cast_fptr_to_obj fh2

downcastGC_MakeSegment ::
                       forall a . (FPtr a, IGC_MakeSegment a) => GC_MakeSegment -> a
downcastGC_MakeSegment h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
