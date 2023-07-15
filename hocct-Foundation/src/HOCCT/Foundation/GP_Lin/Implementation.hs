{-# LANGUAGE EmptyDataDecls, FlexibleContexts, FlexibleInstances,
  ForeignFunctionInterface, IncoherentInstances,
  MultiParamTypeClasses, OverlappingInstances, TemplateHaskell,
  TypeFamilies, TypeSynonymInstances #-}
module HOCCT.Foundation.GP_Lin.Implementation where
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
import HOCCT.Foundation.GP_Lin.RawType
import HOCCT.Foundation.GP_Lin.FFI
import HOCCT.Foundation.GP_Lin.Interface
import HOCCT.Foundation.GP_Lin.Cast
import HOCCT.Foundation.GP_Lin.RawType
import HOCCT.Foundation.GP_Lin.Cast
import HOCCT.Foundation.GP_Lin.Interface
import HOCCT.Foundation.GP_Pnt.RawType
import HOCCT.Foundation.GP_Pnt.Cast
import HOCCT.Foundation.GP_Pnt.Interface
import HOCCT.Foundation.GP_Dir.RawType
import HOCCT.Foundation.GP_Dir.Cast
import HOCCT.Foundation.GP_Dir.Interface

instance () => IGP_Lin (GP_Lin) where

newGP_Lin ::
            (IGP_Dir c1, FPtr c1, IGP_Pnt c0, FPtr c0) => c0 -> c1 -> IO GP_Lin
newGP_Lin = xform1 c_gp_lin_newgp_lin
