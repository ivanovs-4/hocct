{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingData.Message_ProgressRange.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawMessage_ProgressRange

newtype Message_ProgressRange = Message_ProgressRange (Ptr
                                                         RawMessage_ProgressRange)
                                  deriving (Eq, Ord, Show)

instance () => FPtr (Message_ProgressRange) where
        type Raw Message_ProgressRange = RawMessage_ProgressRange
        get_fptr (Message_ProgressRange ptr) = ptr
        cast_fptr_to_obj = Message_ProgressRange
