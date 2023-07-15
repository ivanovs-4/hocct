{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.Foundation.GP_Trsf.Interface where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.Foundation.GP_Trsf.RawType

class () => IGP_Trsf a where

upcastGP_Trsf :: forall a . (FPtr a, IGP_Trsf a) => a -> GP_Trsf
upcastGP_Trsf h
  = let fh = get_fptr h
        fh2 :: Ptr RawGP_Trsf = castPtr fh
      in cast_fptr_to_obj fh2

downcastGP_Trsf :: forall a . (FPtr a, IGP_Trsf a) => GP_Trsf -> a
downcastGP_Trsf h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
