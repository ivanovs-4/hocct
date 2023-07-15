{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.Foundation.GP_Vec.Interface where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.Foundation.GP_Vec.RawType

class () => IGP_Vec a where

upcastGP_Vec :: forall a . (FPtr a, IGP_Vec a) => a -> GP_Vec
upcastGP_Vec h
  = let fh = get_fptr h
        fh2 :: Ptr RawGP_Vec = castPtr fh
      in cast_fptr_to_obj fh2

downcastGP_Vec :: forall a . (FPtr a, IGP_Vec a) => GP_Vec -> a
downcastGP_Vec h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
