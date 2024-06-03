{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingData.TopExp_Explorer.Interface where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingData.TopExp_Explorer.RawType

class () => ITopExp_Explorer a where

upcastTopExp_Explorer ::
                      forall a . (FPtr a, ITopExp_Explorer a) => a -> TopExp_Explorer
upcastTopExp_Explorer h
  = let fh = get_fptr h
        fh2 :: Ptr RawTopExp_Explorer = castPtr fh
      in cast_fptr_to_obj fh2

downcastTopExp_Explorer ::
                        forall a . (FPtr a, ITopExp_Explorer a) => TopExp_Explorer -> a
downcastTopExp_Explorer h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
