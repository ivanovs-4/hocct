{-# LANGUAGE EmptyDataDecls, FlexibleContexts, FlexibleInstances,
  ForeignFunctionInterface, IncoherentInstances,
  MultiParamTypeClasses, OverlappingInstances, TemplateHaskell,
  TypeFamilies, TypeSynonymInstances #-}
module HOCCT.ModelingData.BRepTools.Implementation where
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
import HOCCT.ModelingData.BRepTools.RawType
import HOCCT.ModelingData.BRepTools.FFI
import HOCCT.ModelingData.BRepTools.Interface
import HOCCT.ModelingData.BRepTools.Cast
import HOCCT.ModelingData.BRepTools.RawType
import HOCCT.ModelingData.BRepTools.Cast
import HOCCT.ModelingData.BRepTools.Interface
import HOCCT.ModelingData.TopoDS_Shape.RawType
import HOCCT.ModelingData.TopoDS_Shape.Cast
import HOCCT.ModelingData.TopoDS_Shape.Interface
import HOCCT.ModelingData.Message_ProgressRange.RawType
import HOCCT.ModelingData.Message_ProgressRange.Cast
import HOCCT.ModelingData.Message_ProgressRange.Interface

instance () => IBRepTools (BRepTools) where

bRepTools_Write ::
                  (IMessage_ProgressRange c2, FPtr c2, Castable c1 CString,
                   ITopoDS_Shape c0, FPtr c0) =>
                  c0 -> c1 -> c2 -> IO CBool
bRepTools_Write = xform2 c_breptools_breptools_write
