{-# LANGUAGE EmptyDataDecls, FlexibleContexts, FlexibleInstances,
  ForeignFunctionInterface, IncoherentInstances,
  MultiParamTypeClasses, OverlappingInstances, TemplateHaskell,
  TypeFamilies, TypeSynonymInstances #-}
module HOCCT.ModelingAlgorithms.BRepFilletAPI_MakeChamfer.Implementation
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
import HOCCT.ModelingAlgorithms.BRepFilletAPI_MakeChamfer.RawType
import HOCCT.ModelingAlgorithms.BRepFilletAPI_MakeChamfer.FFI
import HOCCT.ModelingAlgorithms.BRepFilletAPI_MakeChamfer.Interface
import HOCCT.ModelingAlgorithms.BRepFilletAPI_MakeChamfer.Cast
import HOCCT.ModelingAlgorithms.BRepFilletAPI_MakeChamfer.RawType
import HOCCT.ModelingAlgorithms.BRepFilletAPI_MakeChamfer.Cast
import HOCCT.ModelingAlgorithms.BRepFilletAPI_MakeChamfer.Interface
import HOCCT.ModelingData.TopoDS_Shape.RawType
import HOCCT.ModelingData.TopoDS_Shape.Cast
import HOCCT.ModelingData.TopoDS_Shape.Interface
import HOCCT.ModelingData.TopoDS_Edge.RawType
import HOCCT.ModelingData.TopoDS_Edge.Cast
import HOCCT.ModelingData.TopoDS_Edge.Interface
import HOCCT.ModelingAlgorithms.BRepFilletAPI_LocalOperation.RawType
import HOCCT.ModelingAlgorithms.BRepFilletAPI_LocalOperation.Cast
import HOCCT.ModelingAlgorithms.BRepFilletAPI_LocalOperation.Interface
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.Cast
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.Interface
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Command.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Command.Cast
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Command.Interface

instance () =>
         IBRepFilletAPI_MakeChamfer (BRepFilletAPI_MakeChamfer)
         where

instance () =>
         IBRepFilletAPI_LocalOperation (BRepFilletAPI_MakeChamfer)
         where

instance () =>
         IBRepBuilderAPI_MakeShape (BRepFilletAPI_MakeChamfer)
         where
        shape = xform0 c_brepfilletapi_makechamfer_shape

instance () => IBRepBuilderAPI_Command (BRepFilletAPI_MakeChamfer)
         where

newBRepFilletAPI_MakeChamfer ::
                               (ITopoDS_Shape c0, FPtr c0) => c0 -> IO BRepFilletAPI_MakeChamfer
newBRepFilletAPI_MakeChamfer
  = xform0 c_brepfilletapi_makechamfer_newbrepfilletapi_makechamfer

bRepFilletAPI_MakeChamfer_Add_Dis_E ::
                                      (ITopoDS_Edge c0, FPtr c0) =>
                                      BRepFilletAPI_MakeChamfer -> CDouble -> c0 -> IO ()
bRepFilletAPI_MakeChamfer_Add_Dis_E
  = xform2
      c_brepfilletapi_makechamfer_brepfilletapi_makechamfer_add_dis_e
