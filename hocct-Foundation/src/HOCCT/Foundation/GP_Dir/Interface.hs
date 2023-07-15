{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.Foundation.GP_Dir.Interface where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.Foundation.GP_Dir.RawType

class () => IGP_Dir a where

upcastGP_Dir :: forall a . (FPtr a, IGP_Dir a) => a -> GP_Dir
upcastGP_Dir h
  = let fh = get_fptr h
        fh2 :: Ptr RawGP_Dir = castPtr fh
      in cast_fptr_to_obj fh2

downcastGP_Dir :: forall a . (FPtr a, IGP_Dir a) => GP_Dir -> a
downcastGP_Dir h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
