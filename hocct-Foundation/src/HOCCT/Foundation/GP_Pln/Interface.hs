{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.Foundation.GP_Pln.Interface where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.Foundation.GP_Pln.RawType

class () => IGP_Pln a where

upcastGP_Pln :: forall a . (FPtr a, IGP_Pln a) => a -> GP_Pln
upcastGP_Pln h
  = let fh = get_fptr h
        fh2 :: Ptr RawGP_Pln = castPtr fh
      in cast_fptr_to_obj fh2

downcastGP_Pln :: forall a . (FPtr a, IGP_Pln a) => GP_Pln -> a
downcastGP_Pln h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
