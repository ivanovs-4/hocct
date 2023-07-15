{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingData.GCE_MakeMirror.Interface where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingData.GCE_MakeMirror.RawType

class () => IGCE_MakeMirror a where

upcastGCE_MakeMirror ::
                     forall a . (FPtr a, IGCE_MakeMirror a) => a -> GCE_MakeMirror
upcastGCE_MakeMirror h
  = let fh = get_fptr h
        fh2 :: Ptr RawGCE_MakeMirror = castPtr fh
      in cast_fptr_to_obj fh2

downcastGCE_MakeMirror ::
                       forall a . (FPtr a, IGCE_MakeMirror a) => GCE_MakeMirror -> a
downcastGCE_MakeMirror h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
