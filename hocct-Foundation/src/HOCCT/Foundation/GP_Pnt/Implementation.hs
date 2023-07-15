{-# LANGUAGE EmptyDataDecls, FlexibleContexts, FlexibleInstances,
  ForeignFunctionInterface, IncoherentInstances,
  MultiParamTypeClasses, OverlappingInstances, TemplateHaskell,
  TypeFamilies, TypeSynonymInstances #-}
module HOCCT.Foundation.GP_Pnt.Implementation where
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
import HOCCT.Foundation.GP_Pnt.RawType
import HOCCT.Foundation.GP_Pnt.FFI
import HOCCT.Foundation.GP_Pnt.Interface
import HOCCT.Foundation.GP_Pnt.Cast
import HOCCT.Foundation.GP_Pnt.RawType
import HOCCT.Foundation.GP_Pnt.Cast
import HOCCT.Foundation.GP_Pnt.Interface
import HOCCT.Foundation.GP_XYZ.RawType
import HOCCT.Foundation.GP_XYZ.Cast
import HOCCT.Foundation.GP_XYZ.Interface

instance () => IGP_Pnt (GP_Pnt) where

newGP_Pnt :: () => CDouble -> CDouble -> CDouble -> IO GP_Pnt
newGP_Pnt = xform2 c_gp_pnt_newgp_pnt

newGP_Pnt_FromXYZ :: (IGP_XYZ c0, FPtr c0) => c0 -> IO GP_Pnt
newGP_Pnt_FromXYZ = xform0 c_gp_pnt_newgp_pnt_fromxyz
