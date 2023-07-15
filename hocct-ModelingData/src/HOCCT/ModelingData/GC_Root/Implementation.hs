{-# LANGUAGE EmptyDataDecls, FlexibleContexts, FlexibleInstances,
  ForeignFunctionInterface, IncoherentInstances,
  MultiParamTypeClasses, OverlappingInstances, TemplateHaskell,
  TypeFamilies, TypeSynonymInstances #-}
module HOCCT.ModelingData.GC_Root.Implementation where
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
import HOCCT.ModelingData.GC_Root.RawType
import HOCCT.ModelingData.GC_Root.FFI
import HOCCT.ModelingData.GC_Root.Interface
import HOCCT.ModelingData.GC_Root.Cast
import HOCCT.ModelingData.GC_Root.RawType
import HOCCT.ModelingData.GC_Root.Cast
import HOCCT.ModelingData.GC_Root.Interface

instance () => IGC_Root (GC_Root) where

gC_Root_IsDone :: () => GC_Root -> IO CBool
gC_Root_IsDone = xform0 c_gc_root_gc_root_isdone
