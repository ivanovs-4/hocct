{-# LANGUAGE EmptyDataDecls, FlexibleContexts, FlexibleInstances,
  ForeignFunctionInterface, IncoherentInstances,
  MultiParamTypeClasses, OverlappingInstances, TemplateHaskell,
  TypeFamilies, TypeSynonymInstances #-}
module HOCCT.ModelingData.TopoDS_Wire.Implementation where
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
import HOCCT.ModelingData.TopoDS_Wire.RawType
import HOCCT.ModelingData.TopoDS_Wire.FFI
import HOCCT.ModelingData.TopoDS_Wire.Interface
import HOCCT.ModelingData.TopoDS_Wire.Cast
import HOCCT.ModelingData.TopoDS_Wire.RawType
import HOCCT.ModelingData.TopoDS_Wire.Cast
import HOCCT.ModelingData.TopoDS_Wire.Interface
import HOCCT.ModelingData.TopoDS_Shape.RawType
import HOCCT.ModelingData.TopoDS_Shape.Cast
import HOCCT.ModelingData.TopoDS_Shape.Interface

instance () => ITopoDS_Wire (TopoDS_Wire) where

instance () => ITopoDS_Shape (TopoDS_Wire) where

newTopoDS_Wire :: () => IO TopoDS_Wire
newTopoDS_Wire = xformnull c_topods_wire_newtopods_wire
