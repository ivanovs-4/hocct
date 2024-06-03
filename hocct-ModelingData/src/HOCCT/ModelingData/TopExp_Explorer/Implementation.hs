{-# LANGUAGE EmptyDataDecls, FlexibleContexts, FlexibleInstances,
  ForeignFunctionInterface, IncoherentInstances,
  MultiParamTypeClasses, OverlappingInstances, TemplateHaskell,
  TypeFamilies, TypeSynonymInstances #-}
module HOCCT.ModelingData.TopExp_Explorer.Implementation where
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
import HOCCT.ModelingData.TopExp_Explorer.RawType
import HOCCT.ModelingData.TopExp_Explorer.FFI
import HOCCT.ModelingData.TopExp_Explorer.Interface
import HOCCT.ModelingData.TopExp_Explorer.Cast
import HOCCT.ModelingData.TopExp_Explorer.RawType
import HOCCT.ModelingData.TopExp_Explorer.Cast
import HOCCT.ModelingData.TopExp_Explorer.Interface
import HOCCT.ModelingData.TopoDS_Shape.RawType
import HOCCT.ModelingData.TopoDS_Shape.Cast
import HOCCT.ModelingData.TopoDS_Shape.Interface

instance () => ITopExp_Explorer (TopExp_Explorer) where

newTopExp_Explorer ::
                     (ITopoDS_Shape c0, FPtr c0) =>
                     c0 -> Word8 -> Word8 -> IO TopExp_Explorer
newTopExp_Explorer = xform2 c_topexp_explorer_newtopexp_explorer

topExp_Explorer_More :: () => TopExp_Explorer -> IO CBool
topExp_Explorer_More
  = xform0 c_topexp_explorer_topexp_explorer_more

topExp_Explorer_Next :: () => TopExp_Explorer -> IO ()
topExp_Explorer_Next
  = xform0 c_topexp_explorer_topexp_explorer_next

topExp_Explorer_Current :: () => TopExp_Explorer -> IO TopoDS_Shape
topExp_Explorer_Current
  = xform0 c_topexp_explorer_topexp_explorer_current

topExp_Explorer_Value :: () => TopExp_Explorer -> IO TopoDS_Shape
topExp_Explorer_Value
  = xform0 c_topexp_explorer_topexp_explorer_value
