{-# LANGUAGE EmptyDataDecls, FlexibleContexts, FlexibleInstances,
  ForeignFunctionInterface, IncoherentInstances,
  MultiParamTypeClasses, OverlappingInstances, TemplateHaskell,
  TypeFamilies, TypeSynonymInstances #-}
module HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeWire.Implementation
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
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeWire.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeWire.FFI
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeWire.Interface
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeWire.Cast
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeWire.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeWire.Cast
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeWire.Interface
import HOCCT.ModelingData.TopoDS_Shape.RawType
import HOCCT.ModelingData.TopoDS_Shape.Cast
import HOCCT.ModelingData.TopoDS_Shape.Interface
import HOCCT.ModelingData.TopoDS_Wire.RawType
import HOCCT.ModelingData.TopoDS_Wire.Cast
import HOCCT.ModelingData.TopoDS_Wire.Interface
import HOCCT.ModelingData.TopoDS_Edge.RawType
import HOCCT.ModelingData.TopoDS_Edge.Cast
import HOCCT.ModelingData.TopoDS_Edge.Interface
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.Cast
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.Interface
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Command.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Command.Cast
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Command.Interface

instance () => IBRepBuilderAPI_MakeWire (BRepBuilderAPI_MakeWire)
         where

instance () => IBRepBuilderAPI_MakeShape (BRepBuilderAPI_MakeWire)
         where
        shape = xform0 c_brepbuilderapi_makewire_shape

instance () => IBRepBuilderAPI_Command (BRepBuilderAPI_MakeWire)
         where

newBRepBuilderAPI_MakeWireE ::
                              (ITopoDS_Edge c0, FPtr c0) => c0 -> IO BRepBuilderAPI_MakeWire
newBRepBuilderAPI_MakeWireE
  = xform0 c_brepbuilderapi_makewire_newbrepbuilderapi_makewiree

newBRepBuilderAPI_MakeWireE2 ::
                               (ITopoDS_Edge c1, FPtr c1, ITopoDS_Edge c0, FPtr c0) =>
                               c0 -> c1 -> IO BRepBuilderAPI_MakeWire
newBRepBuilderAPI_MakeWireE2
  = xform1 c_brepbuilderapi_makewire_newbrepbuilderapi_makewiree2

newBRepBuilderAPI_MakeWireE3 ::
                               (ITopoDS_Edge c2, FPtr c2, ITopoDS_Edge c1, FPtr c1,
                                ITopoDS_Edge c0, FPtr c0) =>
                               c0 -> c1 -> c2 -> IO BRepBuilderAPI_MakeWire
newBRepBuilderAPI_MakeWireE3
  = xform2 c_brepbuilderapi_makewire_newbrepbuilderapi_makewiree3

newBRepBuilderAPI_MakeWireE4 ::
                               (ITopoDS_Edge c3, FPtr c3, ITopoDS_Edge c2, FPtr c2,
                                ITopoDS_Edge c1, FPtr c1, ITopoDS_Edge c0, FPtr c0) =>
                               c0 -> c1 -> c2 -> c3 -> IO BRepBuilderAPI_MakeWire
newBRepBuilderAPI_MakeWireE4
  = xform3 c_brepbuilderapi_makewire_newbrepbuilderapi_makewiree4

bRepBuilderAPI_MakeWire_Add ::
                              (ITopoDS_Edge c0, FPtr c0) =>
                              BRepBuilderAPI_MakeWire -> c0 -> IO ()
bRepBuilderAPI_MakeWire_Add
  = xform1 c_brepbuilderapi_makewire_brepbuilderapi_makewire_add

bRepBuilderAPI_MakeWire_Wire ::
                               () => BRepBuilderAPI_MakeWire -> IO TopoDS_Wire
bRepBuilderAPI_MakeWire_Wire
  = xform0 c_brepbuilderapi_makewire_brepbuilderapi_makewire_wire
