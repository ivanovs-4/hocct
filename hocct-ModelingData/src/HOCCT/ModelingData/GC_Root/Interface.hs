{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingData.GC_Root.Interface where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingData.GC_Root.RawType

class () => IGC_Root a where

upcastGC_Root :: forall a . (FPtr a, IGC_Root a) => a -> GC_Root
upcastGC_Root h
  = let fh = get_fptr h
        fh2 :: Ptr RawGC_Root = castPtr fh
      in cast_fptr_to_obj fh2

downcastGC_Root :: forall a . (FPtr a, IGC_Root a) => GC_Root -> a
downcastGC_Root h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
