{-# LANGUAGE EmptyDataDecls, FlexibleContexts, FlexibleInstances,
  ForeignFunctionInterface, IncoherentInstances,
  MultiParamTypeClasses, OverlappingInstances, TemplateHaskell,
  TypeFamilies, TypeSynonymInstances #-}
module HOCCT.ModelingAlgorithms.BRepFill_Filling.Implementation
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
import HOCCT.ModelingAlgorithms.BRepFill_Filling.RawType
import HOCCT.ModelingAlgorithms.BRepFill_Filling.FFI
import HOCCT.ModelingAlgorithms.BRepFill_Filling.Interface
import HOCCT.ModelingAlgorithms.BRepFill_Filling.Cast
import HOCCT.ModelingAlgorithms.BRepFill_Filling.RawType
import HOCCT.ModelingAlgorithms.BRepFill_Filling.Cast
import HOCCT.ModelingAlgorithms.BRepFill_Filling.Interface
import HOCCT.ModelingData.TopoDS_Face.RawType
import HOCCT.ModelingData.TopoDS_Face.Cast
import HOCCT.ModelingData.TopoDS_Face.Interface
import HOCCT.Foundation.GP_Pnt.RawType
import HOCCT.Foundation.GP_Pnt.Cast
import HOCCT.Foundation.GP_Pnt.Interface
import HOCCT.ModelingData.TopoDS_Edge.RawType
import HOCCT.ModelingData.TopoDS_Edge.Cast
import HOCCT.ModelingData.TopoDS_Edge.Interface

instance () => IBRepFill_Filling (BRepFill_Filling) where

newBRepFill_Filling :: () => IO BRepFill_Filling
newBRepFill_Filling
  = xformnull c_brepfill_filling_newbrepfill_filling

bRepFill_Filling_AddPoint ::
                            (IGP_Pnt c0, FPtr c0) => BRepFill_Filling -> c0 -> IO CInt
bRepFill_Filling_AddPoint
  = xform1 c_brepfill_filling_brepfill_filling_addpoint

bRepFill_Filling_AddEdge ::
                           (ITopoDS_Edge c0, FPtr c0) =>
                           BRepFill_Filling -> c0 -> Word8 -> CBool -> IO CInt
bRepFill_Filling_AddEdge
  = xform3 c_brepfill_filling_brepfill_filling_addedge

bRepFill_Filling_Build :: () => BRepFill_Filling -> IO ()
bRepFill_Filling_Build
  = xform0 c_brepfill_filling_brepfill_filling_build

bRepFill_Filling_Face :: () => BRepFill_Filling -> IO TopoDS_Face
bRepFill_Filling_Face
  = xform0 c_brepfill_filling_brepfill_filling_face
