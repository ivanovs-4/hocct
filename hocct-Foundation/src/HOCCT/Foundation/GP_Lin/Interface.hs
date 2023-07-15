{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.Foundation.GP_Lin.Interface where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.Foundation.GP_Lin.RawType

class () => IGP_Lin a where

upcastGP_Lin :: forall a . (FPtr a, IGP_Lin a) => a -> GP_Lin
upcastGP_Lin h
  = let fh = get_fptr h
        fh2 :: Ptr RawGP_Lin = castPtr fh
      in cast_fptr_to_obj fh2

downcastGP_Lin :: forall a . (FPtr a, IGP_Lin a) => GP_Lin -> a
downcastGP_Lin h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
