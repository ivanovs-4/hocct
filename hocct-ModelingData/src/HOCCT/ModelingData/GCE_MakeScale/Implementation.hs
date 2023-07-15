{-# LANGUAGE EmptyDataDecls, FlexibleContexts, FlexibleInstances,
  ForeignFunctionInterface, IncoherentInstances,
  MultiParamTypeClasses, OverlappingInstances, TemplateHaskell,
  TypeFamilies, TypeSynonymInstances #-}
module HOCCT.ModelingData.GCE_MakeScale.Implementation where
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
import HOCCT.ModelingData.GCE_MakeScale.RawType
import HOCCT.ModelingData.GCE_MakeScale.FFI
import HOCCT.ModelingData.GCE_MakeScale.Interface
import HOCCT.ModelingData.GCE_MakeScale.Cast
import HOCCT.ModelingData.GCE_MakeScale.RawType
import HOCCT.ModelingData.GCE_MakeScale.Cast
import HOCCT.ModelingData.GCE_MakeScale.Interface
import HOCCT.Foundation.GP_Trsf.RawType
import HOCCT.Foundation.GP_Trsf.Cast
import HOCCT.Foundation.GP_Trsf.Interface
import HOCCT.Foundation.GP_Pnt.RawType
import HOCCT.Foundation.GP_Pnt.Cast
import HOCCT.Foundation.GP_Pnt.Interface

instance () => IGCE_MakeScale (GCE_MakeScale) where

newGCE_MakeScale ::
                   (IGP_Pnt c0, FPtr c0) => c0 -> CDouble -> IO GCE_MakeScale
newGCE_MakeScale = xform1 c_gce_makescale_newgce_makescale

gCE_MakeScale_Value :: () => GCE_MakeScale -> IO GP_Trsf
gCE_MakeScale_Value = xform0 c_gce_makescale_gce_makescale_value
