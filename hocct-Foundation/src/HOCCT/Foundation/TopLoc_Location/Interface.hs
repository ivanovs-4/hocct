{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.Foundation.TopLoc_Location.Interface where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.Foundation.TopLoc_Location.RawType

class () => ITopLoc_Location a where

upcastTopLoc_Location ::
                      forall a . (FPtr a, ITopLoc_Location a) => a -> TopLoc_Location
upcastTopLoc_Location h
  = let fh = get_fptr h
        fh2 :: Ptr RawTopLoc_Location = castPtr fh
      in cast_fptr_to_obj fh2

downcastTopLoc_Location ::
                        forall a . (FPtr a, ITopLoc_Location a) => TopLoc_Location -> a
downcastTopLoc_Location h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
