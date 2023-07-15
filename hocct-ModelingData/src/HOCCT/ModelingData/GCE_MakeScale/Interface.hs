{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingData.GCE_MakeScale.Interface where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingData.GCE_MakeScale.RawType

class () => IGCE_MakeScale a where

upcastGCE_MakeScale ::
                    forall a . (FPtr a, IGCE_MakeScale a) => a -> GCE_MakeScale
upcastGCE_MakeScale h
  = let fh = get_fptr h
        fh2 :: Ptr RawGCE_MakeScale = castPtr fh
      in cast_fptr_to_obj fh2

downcastGCE_MakeScale ::
                      forall a . (FPtr a, IGCE_MakeScale a) => GCE_MakeScale -> a
downcastGCE_MakeScale h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
