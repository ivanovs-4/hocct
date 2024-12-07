{-# LANGUAGE EmptyDataDecls, FlexibleContexts, FlexibleInstances,
  ForeignFunctionInterface, IncoherentInstances,
  MultiParamTypeClasses, OverlappingInstances, TemplateHaskell,
  TypeFamilies, TypeSynonymInstances #-}
module HOCCT.ModelingData.TopoDS_Shell.Implementation where
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
import HOCCT.ModelingData.TopoDS_Shell.RawType
import HOCCT.ModelingData.TopoDS_Shell.FFI
import HOCCT.ModelingData.TopoDS_Shell.Interface
import HOCCT.ModelingData.TopoDS_Shell.Cast
import HOCCT.ModelingData.TopoDS_Shell.RawType
import HOCCT.ModelingData.TopoDS_Shell.Cast
import HOCCT.ModelingData.TopoDS_Shell.Interface
import HOCCT.ModelingData.TopoDS_Shape.RawType
import HOCCT.ModelingData.TopoDS_Shape.Cast
import HOCCT.ModelingData.TopoDS_Shape.Interface

instance () => ITopoDS_Shell (TopoDS_Shell) where

instance () => ITopoDS_Shape (TopoDS_Shell) where

newTopoDS_Shell :: () => IO TopoDS_Shell
newTopoDS_Shell = xformnull c_topods_shell_newtopods_shell
