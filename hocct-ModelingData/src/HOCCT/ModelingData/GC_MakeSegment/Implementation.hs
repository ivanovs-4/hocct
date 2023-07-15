{-# LANGUAGE EmptyDataDecls, FlexibleContexts, FlexibleInstances,
  ForeignFunctionInterface, IncoherentInstances,
  MultiParamTypeClasses, OverlappingInstances, TemplateHaskell,
  TypeFamilies, TypeSynonymInstances #-}
module HOCCT.ModelingData.GC_MakeSegment.Implementation where
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
import HOCCT.ModelingData.GC_MakeSegment.RawType
import HOCCT.ModelingData.GC_MakeSegment.FFI
import HOCCT.ModelingData.GC_MakeSegment.Interface
import HOCCT.ModelingData.GC_MakeSegment.Cast
import HOCCT.ModelingData.GC_MakeSegment.RawType
import HOCCT.ModelingData.GC_MakeSegment.Cast
import HOCCT.ModelingData.GC_MakeSegment.Interface
import HOCCT.Foundation.Standard_Handle.Template
import HOCCT.ModelingData.Geom_TrimmedCurve.RawType
import HOCCT.ModelingData.Geom_TrimmedCurve.Cast
import HOCCT.ModelingData.Geom_TrimmedCurve.Interface
import HOCCT.Foundation.GP_Pnt.RawType
import HOCCT.Foundation.GP_Pnt.Cast
import HOCCT.Foundation.GP_Pnt.Interface
import HOCCT.ModelingData.GC_Root.RawType
import HOCCT.ModelingData.GC_Root.Cast
import HOCCT.ModelingData.GC_Root.Interface

instance () => IGC_MakeSegment (GC_MakeSegment) where

instance () => IGC_Root (GC_MakeSegment) where

newGC_MakeSegment ::
                    (IGP_Pnt c1, FPtr c1, IGP_Pnt c0, FPtr c0) =>
                    c0 -> c1 -> IO GC_MakeSegment
newGC_MakeSegment = xform1 c_gc_makesegment_newgc_makesegment

gC_MakeSegment_Value ::
                       () => GC_MakeSegment -> IO (Standard_Handle Geom_TrimmedCurve)
gC_MakeSegment_Value = xform0 c_gc_makesegment_gc_makesegment_value
