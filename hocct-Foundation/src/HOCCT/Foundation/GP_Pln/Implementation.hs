{-# LANGUAGE EmptyDataDecls, FlexibleContexts, FlexibleInstances,
  ForeignFunctionInterface, IncoherentInstances,
  MultiParamTypeClasses, OverlappingInstances, TemplateHaskell,
  TypeFamilies, TypeSynonymInstances #-}
module HOCCT.Foundation.GP_Pln.Implementation where
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
import HOCCT.Foundation.GP_Pln.RawType
import HOCCT.Foundation.GP_Pln.FFI
import HOCCT.Foundation.GP_Pln.Interface
import HOCCT.Foundation.GP_Pln.Cast
import HOCCT.Foundation.GP_Pln.RawType
import HOCCT.Foundation.GP_Pln.Cast
import HOCCT.Foundation.GP_Pln.Interface
import HOCCT.Foundation.GP_Pnt.RawType
import HOCCT.Foundation.GP_Pnt.Cast
import HOCCT.Foundation.GP_Pnt.Interface
import HOCCT.Foundation.GP_Dir.RawType
import HOCCT.Foundation.GP_Dir.Cast
import HOCCT.Foundation.GP_Dir.Interface

instance () => IGP_Pln (GP_Pln) where

newGP_Pln_OXY :: () => IO GP_Pln
newGP_Pln_OXY = xformnull c_gp_pln_newgp_pln_oxy

newGP_Pln ::
            (IGP_Dir c1, FPtr c1, IGP_Pnt c0, FPtr c0) => c0 -> c1 -> IO GP_Pln
newGP_Pln = xform1 c_gp_pln_newgp_pln

newGP_Pln_CartesianABCD ::
                          () => CDouble -> CDouble -> CDouble -> CDouble -> IO GP_Pln
newGP_Pln_CartesianABCD = xform3 c_gp_pln_newgp_pln_cartesianabcd
