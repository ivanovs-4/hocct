{-# LANGUAGE EmptyDataDecls, FlexibleContexts, FlexibleInstances,
  ForeignFunctionInterface, IncoherentInstances,
  MultiParamTypeClasses, OverlappingInstances, TemplateHaskell,
  TypeFamilies, TypeSynonymInstances #-}
module HOCCT.Foundation.Standard_Transient.Implementation where
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
import HOCCT.Foundation.Standard_Transient.RawType
import HOCCT.Foundation.Standard_Transient.FFI
import HOCCT.Foundation.Standard_Transient.Interface
import HOCCT.Foundation.Standard_Transient.Cast
import HOCCT.Foundation.Standard_Transient.RawType
import HOCCT.Foundation.Standard_Transient.Cast
import HOCCT.Foundation.Standard_Transient.Interface

instance () => IStandard_Transient (Standard_Transient) where
