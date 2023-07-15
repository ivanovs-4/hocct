{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingData.GCE_MakeTranslation.Interface where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingData.GCE_MakeTranslation.RawType

class () => IGCE_MakeTranslation a where

upcastGCE_MakeTranslation ::
                          forall a . (FPtr a, IGCE_MakeTranslation a) =>
                            a -> GCE_MakeTranslation
upcastGCE_MakeTranslation h
  = let fh = get_fptr h
        fh2 :: Ptr RawGCE_MakeTranslation = castPtr fh
      in cast_fptr_to_obj fh2

downcastGCE_MakeTranslation ::
                            forall a . (FPtr a, IGCE_MakeTranslation a) =>
                              GCE_MakeTranslation -> a
downcastGCE_MakeTranslation h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
