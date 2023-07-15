{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingData.GCE_MakeRotation.Interface where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingData.GCE_MakeRotation.RawType

class () => IGCE_MakeRotation a where

upcastGCE_MakeRotation ::
                       forall a . (FPtr a, IGCE_MakeRotation a) => a -> GCE_MakeRotation
upcastGCE_MakeRotation h
  = let fh = get_fptr h
        fh2 :: Ptr RawGCE_MakeRotation = castPtr fh
      in cast_fptr_to_obj fh2

downcastGCE_MakeRotation ::
                         forall a . (FPtr a, IGCE_MakeRotation a) => GCE_MakeRotation -> a
downcastGCE_MakeRotation h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
