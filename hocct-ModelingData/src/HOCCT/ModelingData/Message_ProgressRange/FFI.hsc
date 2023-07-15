{-# LANGUAGE ForeignFunctionInterface, InterruptibleFFI #-}
module HOCCT.ModelingData.Message_ProgressRange.FFI where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import HOCCT.ModelingData.Message_ProgressRange.RawType
import HOCCT.ModelingData.Message_ProgressRange.RawType

foreign import ccall interruptible
               "HOCCT_ModelingData_Message_ProgressRange.h Message_ProgressRange_newMessage_ProgressRange"
               c_message_progressrange_newmessage_progressrange ::
               IO (Ptr RawMessage_ProgressRange)
