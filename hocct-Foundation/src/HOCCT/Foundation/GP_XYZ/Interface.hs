{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.Foundation.GP_XYZ.Interface where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.Foundation.GP_XYZ.RawType

class () => IGP_XYZ a where

upcastGP_XYZ :: forall a . (FPtr a, IGP_XYZ a) => a -> GP_XYZ
upcastGP_XYZ h
  = let fh = get_fptr h
        fh2 :: Ptr RawGP_XYZ = castPtr fh
      in cast_fptr_to_obj fh2

downcastGP_XYZ :: forall a . (FPtr a, IGP_XYZ a) => GP_XYZ -> a
downcastGP_XYZ h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
