{-# LANGUAGE EmptyDataDecls, FlexibleContexts, FlexibleInstances,
  ForeignFunctionInterface, IncoherentInstances,
  MultiParamTypeClasses, OverlappingInstances, TemplateHaskell,
  TypeFamilies, TypeSynonymInstances #-}
module HOCCT.Foundation.TopLoc_Location.Implementation where
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
import HOCCT.Foundation.TopLoc_Location.RawType
import HOCCT.Foundation.TopLoc_Location.FFI
import HOCCT.Foundation.TopLoc_Location.Interface
import HOCCT.Foundation.TopLoc_Location.Cast
import HOCCT.Foundation.TopLoc_Location.RawType
import HOCCT.Foundation.TopLoc_Location.Cast
import HOCCT.Foundation.TopLoc_Location.Interface

instance () => ITopLoc_Location (TopLoc_Location) where
