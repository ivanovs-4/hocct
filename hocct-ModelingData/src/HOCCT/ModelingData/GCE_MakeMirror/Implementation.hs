{-# LANGUAGE EmptyDataDecls, FlexibleContexts, FlexibleInstances,
  ForeignFunctionInterface, IncoherentInstances,
  MultiParamTypeClasses, OverlappingInstances, TemplateHaskell,
  TypeFamilies, TypeSynonymInstances #-}
module HOCCT.ModelingData.GCE_MakeMirror.Implementation where
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
import HOCCT.ModelingData.GCE_MakeMirror.RawType
import HOCCT.ModelingData.GCE_MakeMirror.FFI
import HOCCT.ModelingData.GCE_MakeMirror.Interface
import HOCCT.ModelingData.GCE_MakeMirror.Cast
import HOCCT.ModelingData.GCE_MakeMirror.RawType
import HOCCT.ModelingData.GCE_MakeMirror.Cast
import HOCCT.ModelingData.GCE_MakeMirror.Interface
import HOCCT.Foundation.GP_Trsf.RawType
import HOCCT.Foundation.GP_Trsf.Cast
import HOCCT.Foundation.GP_Trsf.Interface
import HOCCT.Foundation.GP_Pnt.RawType
import HOCCT.Foundation.GP_Pnt.Cast
import HOCCT.Foundation.GP_Pnt.Interface
import HOCCT.Foundation.GP_Lin.RawType
import HOCCT.Foundation.GP_Lin.Cast
import HOCCT.Foundation.GP_Lin.Interface
import HOCCT.Foundation.GP_Dir.RawType
import HOCCT.Foundation.GP_Dir.Cast
import HOCCT.Foundation.GP_Dir.Interface
import HOCCT.Foundation.GP_Pln.RawType
import HOCCT.Foundation.GP_Pln.Cast
import HOCCT.Foundation.GP_Pln.Interface

instance () => IGCE_MakeMirror (GCE_MakeMirror) where

newGCE_MakeMirror_FromPoint ::
                              (IGP_Pnt c0, FPtr c0) => c0 -> IO GCE_MakeMirror
newGCE_MakeMirror_FromPoint
  = xform0 c_gce_makemirror_newgce_makemirror_frompoint

newGCE_MakeMirror_FromLine ::
                             (IGP_Lin c0, FPtr c0) => c0 -> IO GCE_MakeMirror
newGCE_MakeMirror_FromLine
  = xform0 c_gce_makemirror_newgce_makemirror_fromline

newGCE_MakeMirror_FromPointDirection ::
                                       (IGP_Dir c1, FPtr c1, IGP_Pnt c0, FPtr c0) =>
                                       c0 -> c1 -> IO GCE_MakeMirror
newGCE_MakeMirror_FromPointDirection
  = xform1 c_gce_makemirror_newgce_makemirror_frompointdirection

newGCE_MakeMirror_FromPlane ::
                              (IGP_Pln c0, FPtr c0) => c0 -> IO GCE_MakeMirror
newGCE_MakeMirror_FromPlane
  = xform0 c_gce_makemirror_newgce_makemirror_fromplane

gCE_MakeMirror_Value :: () => GCE_MakeMirror -> IO GP_Trsf
gCE_MakeMirror_Value = xform0 c_gce_makemirror_gce_makemirror_value
