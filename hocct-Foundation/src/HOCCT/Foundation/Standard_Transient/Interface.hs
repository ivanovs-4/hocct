{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.Foundation.Standard_Transient.Interface where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.Foundation.Standard_Transient.RawType

class () => IStandard_Transient a where

upcastStandard_Transient ::
                         forall a . (FPtr a, IStandard_Transient a) =>
                           a -> Standard_Transient
upcastStandard_Transient h
  = let fh = get_fptr h
        fh2 :: Ptr RawStandard_Transient = castPtr fh
      in cast_fptr_to_obj fh2

downcastStandard_Transient ::
                           forall a . (FPtr a, IStandard_Transient a) =>
                             Standard_Transient -> a
downcastStandard_Transient h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
