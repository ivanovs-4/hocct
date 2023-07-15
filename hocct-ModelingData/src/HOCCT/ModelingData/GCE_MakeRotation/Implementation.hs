{-# LANGUAGE EmptyDataDecls, FlexibleContexts, FlexibleInstances,
  ForeignFunctionInterface, IncoherentInstances,
  MultiParamTypeClasses, OverlappingInstances, TemplateHaskell,
  TypeFamilies, TypeSynonymInstances #-}
module HOCCT.ModelingData.GCE_MakeRotation.Implementation where
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
import HOCCT.ModelingData.GCE_MakeRotation.RawType
import HOCCT.ModelingData.GCE_MakeRotation.FFI
import HOCCT.ModelingData.GCE_MakeRotation.Interface
import HOCCT.ModelingData.GCE_MakeRotation.Cast
import HOCCT.ModelingData.GCE_MakeRotation.RawType
import HOCCT.ModelingData.GCE_MakeRotation.Cast
import HOCCT.ModelingData.GCE_MakeRotation.Interface
import HOCCT.Foundation.GP_Trsf.RawType
import HOCCT.Foundation.GP_Trsf.Cast
import HOCCT.Foundation.GP_Trsf.Interface
import HOCCT.Foundation.GP_Lin.RawType
import HOCCT.Foundation.GP_Lin.Cast
import HOCCT.Foundation.GP_Lin.Interface
import HOCCT.Foundation.GP_Pnt.RawType
import HOCCT.Foundation.GP_Pnt.Cast
import HOCCT.Foundation.GP_Pnt.Interface
import HOCCT.Foundation.GP_Dir.RawType
import HOCCT.Foundation.GP_Dir.Cast
import HOCCT.Foundation.GP_Dir.Interface

instance () => IGCE_MakeRotation (GCE_MakeRotation) where

newGCE_MakeRotation_LineAngle ::
                                (IGP_Lin c0, FPtr c0) => c0 -> CDouble -> IO GCE_MakeRotation
newGCE_MakeRotation_LineAngle
  = xform1 c_gce_makerotation_newgce_makerotation_lineangle

newGCE_MakeRotation_PointDirectionAngle ::
                                          (IGP_Dir c1, FPtr c1, IGP_Pnt c0, FPtr c0) =>
                                          c0 -> c1 -> CDouble -> IO GCE_MakeRotation
newGCE_MakeRotation_PointDirectionAngle
  = xform2 c_gce_makerotation_newgce_makerotation_pointdirectionangle

gCE_MakeRotation_Value :: () => GCE_MakeRotation -> IO GP_Trsf
gCE_MakeRotation_Value
  = xform0 c_gce_makerotation_gce_makerotation_value
