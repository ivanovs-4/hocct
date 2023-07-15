{-# LANGUAGE EmptyDataDecls, FlexibleContexts, FlexibleInstances,
  ForeignFunctionInterface, IncoherentInstances,
  MultiParamTypeClasses, OverlappingInstances, TemplateHaskell,
  TypeFamilies, TypeSynonymInstances #-}
module HOCCT.ModelingData.Message_ProgressRange.Implementation
       where
import Data.Monoid
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import Language.Haskell.TH
import Language.Haskell.TH.Syntax
import System.IO.Unsafe
import FFICXX.Runtime.Cast
import FFICXX.Runtime.CodeGen.Cxx
import FFICXX.Runtime.TH
import HOCCT.ModelingData.Message_ProgressRange.RawType
import HOCCT.ModelingData.Message_ProgressRange.FFI
import HOCCT.ModelingData.Message_ProgressRange.Interface
import HOCCT.ModelingData.Message_ProgressRange.Cast
import HOCCT.ModelingData.Message_ProgressRange.RawType
import HOCCT.ModelingData.Message_ProgressRange.Cast
import HOCCT.ModelingData.Message_ProgressRange.Interface

instance () => IMessage_ProgressRange (Message_ProgressRange) where

newMessage_ProgressRange :: () => IO Message_ProgressRange
newMessage_ProgressRange
  = xformnull c_message_progressrange_newmessage_progressrange
