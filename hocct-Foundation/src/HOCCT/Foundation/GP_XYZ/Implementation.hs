{-# LANGUAGE EmptyDataDecls, FlexibleContexts, FlexibleInstances,
  ForeignFunctionInterface, IncoherentInstances,
  MultiParamTypeClasses, OverlappingInstances, TemplateHaskell,
  TypeFamilies, TypeSynonymInstances #-}
module HOCCT.Foundation.GP_XYZ.Implementation where
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
import HOCCT.Foundation.GP_XYZ.RawType
import HOCCT.Foundation.GP_XYZ.FFI
import HOCCT.Foundation.GP_XYZ.Interface
import HOCCT.Foundation.GP_XYZ.Cast
import HOCCT.Foundation.GP_XYZ.RawType
import HOCCT.Foundation.GP_XYZ.Cast
import HOCCT.Foundation.GP_XYZ.Interface

instance () => IGP_XYZ (GP_XYZ) where

newGP_XYZ :: () => CDouble -> CDouble -> CDouble -> IO GP_XYZ
newGP_XYZ = xform2 c_gp_xyz_newgp_xyz
