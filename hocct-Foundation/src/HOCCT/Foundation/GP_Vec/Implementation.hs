{-# LANGUAGE EmptyDataDecls, FlexibleContexts, FlexibleInstances,
  ForeignFunctionInterface, IncoherentInstances,
  MultiParamTypeClasses, OverlappingInstances, TemplateHaskell,
  TypeFamilies, TypeSynonymInstances #-}
module HOCCT.Foundation.GP_Vec.Implementation where
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
import HOCCT.Foundation.GP_Vec.RawType
import HOCCT.Foundation.GP_Vec.FFI
import HOCCT.Foundation.GP_Vec.Interface
import HOCCT.Foundation.GP_Vec.Cast
import HOCCT.Foundation.GP_Vec.RawType
import HOCCT.Foundation.GP_Vec.Cast
import HOCCT.Foundation.GP_Vec.Interface
import HOCCT.Foundation.GP_XYZ.RawType
import HOCCT.Foundation.GP_XYZ.Cast
import HOCCT.Foundation.GP_XYZ.Interface
import HOCCT.Foundation.GP_Pnt.RawType
import HOCCT.Foundation.GP_Pnt.Cast
import HOCCT.Foundation.GP_Pnt.Interface

instance () => IGP_Vec (GP_Vec) where

newGP_Vec_FromXYZ :: (IGP_XYZ c0, FPtr c0) => c0 -> IO GP_Vec
newGP_Vec_FromXYZ = xform0 c_gp_vec_newgp_vec_fromxyz

newGP_Vec :: () => CDouble -> CDouble -> CDouble -> IO GP_Vec
newGP_Vec = xform2 c_gp_vec_newgp_vec

newGP_Vec_FromP1P2 ::
                     (IGP_Pnt c1, FPtr c1, IGP_Pnt c0, FPtr c0) => c0 -> c1 -> IO GP_Vec
newGP_Vec_FromP1P2 = xform1 c_gp_vec_newgp_vec_fromp1p2
