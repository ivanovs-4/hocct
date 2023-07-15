{-# LANGUAGE EmptyDataDecls, FlexibleContexts, FlexibleInstances,
  ForeignFunctionInterface, IncoherentInstances,
  MultiParamTypeClasses, OverlappingInstances, TemplateHaskell,
  TypeFamilies, TypeSynonymInstances #-}
module HOCCT.ModelingData.GCE_MakeTranslation.Implementation where
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
import HOCCT.ModelingData.GCE_MakeTranslation.RawType
import HOCCT.ModelingData.GCE_MakeTranslation.FFI
import HOCCT.ModelingData.GCE_MakeTranslation.Interface
import HOCCT.ModelingData.GCE_MakeTranslation.Cast
import HOCCT.ModelingData.GCE_MakeTranslation.RawType
import HOCCT.ModelingData.GCE_MakeTranslation.Cast
import HOCCT.ModelingData.GCE_MakeTranslation.Interface
import HOCCT.Foundation.GP_Trsf.RawType
import HOCCT.Foundation.GP_Trsf.Cast
import HOCCT.Foundation.GP_Trsf.Interface
import HOCCT.Foundation.GP_Vec.RawType
import HOCCT.Foundation.GP_Vec.Cast
import HOCCT.Foundation.GP_Vec.Interface
import HOCCT.Foundation.GP_Pnt.RawType
import HOCCT.Foundation.GP_Pnt.Cast
import HOCCT.Foundation.GP_Pnt.Interface

instance () => IGCE_MakeTranslation (GCE_MakeTranslation) where

newGCE_MakeTranslation_FromVec ::
                                 (IGP_Vec c0, FPtr c0) => c0 -> IO GCE_MakeTranslation
newGCE_MakeTranslation_FromVec
  = xform0 c_gce_maketranslation_newgce_maketranslation_fromvec

newGCE_MakeTranslation_FromP1P2 ::
                                  (IGP_Pnt c1, FPtr c1, IGP_Pnt c0, FPtr c0) =>
                                  c0 -> c1 -> IO GCE_MakeTranslation
newGCE_MakeTranslation_FromP1P2
  = xform1 c_gce_maketranslation_newgce_maketranslation_fromp1p2

gCE_MakeTranslation_Value ::
                            () => GCE_MakeTranslation -> IO GP_Trsf
gCE_MakeTranslation_Value
  = xform0 c_gce_maketranslation_gce_maketranslation_value
