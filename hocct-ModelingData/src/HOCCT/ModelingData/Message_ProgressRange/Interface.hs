{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingData.Message_ProgressRange.Interface where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingData.Message_ProgressRange.RawType

class () => IMessage_ProgressRange a where

upcastMessage_ProgressRange ::
                            forall a . (FPtr a, IMessage_ProgressRange a) =>
                              a -> Message_ProgressRange
upcastMessage_ProgressRange h
  = let fh = get_fptr h
        fh2 :: Ptr RawMessage_ProgressRange = castPtr fh
      in cast_fptr_to_obj fh2

downcastMessage_ProgressRange ::
                              forall a . (FPtr a, IMessage_ProgressRange a) =>
                                Message_ProgressRange -> a
downcastMessage_ProgressRange h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
