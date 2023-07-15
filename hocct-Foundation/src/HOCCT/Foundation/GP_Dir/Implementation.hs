{-# LANGUAGE EmptyDataDecls, FlexibleContexts, FlexibleInstances,
  ForeignFunctionInterface, IncoherentInstances,
  MultiParamTypeClasses, OverlappingInstances, TemplateHaskell,
  TypeFamilies, TypeSynonymInstances #-}
module HOCCT.Foundation.GP_Dir.Implementation where
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
import HOCCT.Foundation.GP_Dir.RawType
import HOCCT.Foundation.GP_Dir.FFI
import HOCCT.Foundation.GP_Dir.Interface
import HOCCT.Foundation.GP_Dir.Cast
import HOCCT.Foundation.GP_Dir.RawType
import HOCCT.Foundation.GP_Dir.Cast
import HOCCT.Foundation.GP_Dir.Interface
import HOCCT.Foundation.GP_Vec.RawType
import HOCCT.Foundation.GP_Vec.Cast
import HOCCT.Foundation.GP_Vec.Interface
import HOCCT.Foundation.GP_XYZ.RawType
import HOCCT.Foundation.GP_XYZ.Cast
import HOCCT.Foundation.GP_XYZ.Interface

instance () => IGP_Dir (GP_Dir) where

newGP_Dir_FromVec :: (IGP_Vec c0, FPtr c0) => c0 -> IO GP_Dir
newGP_Dir_FromVec = xform0 c_gp_dir_newgp_dir_fromvec

newGP_Dir_FromXYZ :: (IGP_XYZ c0, FPtr c0) => c0 -> IO GP_Dir
newGP_Dir_FromXYZ = xform0 c_gp_dir_newgp_dir_fromxyz

newGP_Dir :: () => CDouble -> CDouble -> CDouble -> IO GP_Dir
newGP_Dir = xform2 c_gp_dir_newgp_dir
