{-# LANGUAGE EmptyDataDecls, FlexibleContexts, FlexibleInstances,
  ForeignFunctionInterface, IncoherentInstances,
  MultiParamTypeClasses, OverlappingInstances, TemplateHaskell,
  TypeFamilies, TypeSynonymInstances #-}
module HOCCT.ModelingAlgorithms.BRepBuilderAPI_Sewing.Implementation
       where
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
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Sewing.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Sewing.FFI
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Sewing.Interface
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Sewing.Cast
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Sewing.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Sewing.Cast
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Sewing.Interface
import HOCCT.ModelingData.TopoDS_Shape.RawType
import HOCCT.ModelingData.TopoDS_Shape.Cast
import HOCCT.ModelingData.TopoDS_Shape.Interface

instance () => IBRepBuilderAPI_Sewing (BRepBuilderAPI_Sewing) where

newBRepBuilderAPI_Sewing :: () => IO BRepBuilderAPI_Sewing
newBRepBuilderAPI_Sewing
  = xformnull c_brepbuilderapi_sewing_newbrepbuilderapi_sewing

newBRepBuilderAPI_Sewing_ ::
                            () =>
                            CDouble ->
                              CBool -> CBool -> CBool -> CBool -> IO BRepBuilderAPI_Sewing
newBRepBuilderAPI_Sewing_
  = xform4 c_brepbuilderapi_sewing_newbrepbuilderapi_sewing_

bRepBuilderAPI_Sewing_Add ::
                            (ITopoDS_Shape c0, FPtr c0) => BRepBuilderAPI_Sewing -> c0 -> IO ()
bRepBuilderAPI_Sewing_Add
  = xform1 c_brepbuilderapi_sewing_brepbuilderapi_sewing_add

bRepBuilderAPI_Sewing_SewedShape ::
                                   () => BRepBuilderAPI_Sewing -> IO TopoDS_Shape
bRepBuilderAPI_Sewing_SewedShape
  = xform0 c_brepbuilderapi_sewing_brepbuilderapi_sewing_sewedshape

bRepBuilderAPI_Sewing_Perform ::
                                () => BRepBuilderAPI_Sewing -> IO ()
bRepBuilderAPI_Sewing_Perform
  = xform0 c_brepbuilderapi_sewing_brepbuilderapi_sewing_perform
