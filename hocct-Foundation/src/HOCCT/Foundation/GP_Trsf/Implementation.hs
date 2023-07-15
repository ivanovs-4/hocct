{-# LANGUAGE EmptyDataDecls, FlexibleContexts, FlexibleInstances,
  ForeignFunctionInterface, IncoherentInstances,
  MultiParamTypeClasses, OverlappingInstances, TemplateHaskell,
  TypeFamilies, TypeSynonymInstances #-}
module HOCCT.Foundation.GP_Trsf.Implementation where
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
import HOCCT.Foundation.GP_Trsf.RawType
import HOCCT.Foundation.GP_Trsf.FFI
import HOCCT.Foundation.GP_Trsf.Interface
import HOCCT.Foundation.GP_Trsf.Cast
import HOCCT.Foundation.GP_Trsf.RawType
import HOCCT.Foundation.GP_Trsf.Cast
import HOCCT.Foundation.GP_Trsf.Interface

instance () => IGP_Trsf (GP_Trsf) where

gP_Trsf_Multiplied ::
                     (IGP_Trsf c0, FPtr c0) => GP_Trsf -> c0 -> IO GP_Trsf
gP_Trsf_Multiplied = xform1 c_gp_trsf_gp_trsf_multiplied

gP_Trsf_Multiply ::
                   (IGP_Trsf c0, FPtr c0) => GP_Trsf -> c0 -> IO ()
gP_Trsf_Multiply = xform1 c_gp_trsf_gp_trsf_multiply

gP_Trsf_PreMultiply ::
                      (IGP_Trsf c0, FPtr c0) => GP_Trsf -> c0 -> IO ()
gP_Trsf_PreMultiply = xform1 c_gp_trsf_gp_trsf_premultiply

gP_Trsf_Inverted :: () => GP_Trsf -> IO GP_Trsf
gP_Trsf_Inverted = xform0 c_gp_trsf_gp_trsf_inverted

gP_Trsf_Invert :: () => GP_Trsf -> IO ()
gP_Trsf_Invert = xform0 c_gp_trsf_gp_trsf_invert
