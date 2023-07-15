{-# LANGUAGE FlexibleContexts, FlexibleInstances,
  ForeignFunctionInterface, InterruptibleFFI, TemplateHaskell #-}
module HOCCT.Foundation.TH () where
import Data.Char
import Data.List
import Data.Monoid
import Foreign.C.Types
import Foreign.Ptr
import Language.Haskell.TH
import Language.Haskell.TH.Syntax
import FFICXX.Runtime.CodeGen.Cxx
import FFICXX.Runtime.TH
