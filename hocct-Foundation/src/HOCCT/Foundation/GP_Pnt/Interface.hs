{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.Foundation.GP_Pnt.Interface where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.Foundation.GP_Pnt.RawType

class () => IGP_Pnt a where

upcastGP_Pnt :: forall a . (FPtr a, IGP_Pnt a) => a -> GP_Pnt
upcastGP_Pnt h
  = let fh = get_fptr h
        fh2 :: Ptr RawGP_Pnt = castPtr fh
      in cast_fptr_to_obj fh2

downcastGP_Pnt :: forall a . (FPtr a, IGP_Pnt a) => GP_Pnt -> a
downcastGP_Pnt h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
