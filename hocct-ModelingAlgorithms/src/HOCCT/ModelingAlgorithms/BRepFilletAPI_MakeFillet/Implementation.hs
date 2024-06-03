{-# LANGUAGE EmptyDataDecls, FlexibleContexts, FlexibleInstances,
  ForeignFunctionInterface, IncoherentInstances,
  MultiParamTypeClasses, OverlappingInstances, TemplateHaskell,
  TypeFamilies, TypeSynonymInstances #-}
module HOCCT.ModelingAlgorithms.BRepFilletAPI_MakeFillet.Implementation
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
import HOCCT.ModelingAlgorithms.BRepFilletAPI_MakeFillet.RawType
import HOCCT.ModelingAlgorithms.BRepFilletAPI_MakeFillet.FFI
import HOCCT.ModelingAlgorithms.BRepFilletAPI_MakeFillet.Interface
import HOCCT.ModelingAlgorithms.BRepFilletAPI_MakeFillet.Cast
import HOCCT.ModelingAlgorithms.BRepFilletAPI_MakeFillet.RawType
import HOCCT.ModelingAlgorithms.BRepFilletAPI_MakeFillet.Cast
import HOCCT.ModelingAlgorithms.BRepFilletAPI_MakeFillet.Interface
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

instance () => IBRepFilletAPI_MakeFillet (BRepFilletAPI_MakeFillet)
         where

instance () =>
         IBRepFilletAPI_LocalOperation (BRepFilletAPI_MakeFillet)
         where

instance () => IBRepBuilderAPI_MakeShape (BRepFilletAPI_MakeFillet)
         where
        shape = xform0 c_brepfilletapi_makefillet_shape

instance () => IBRepBuilderAPI_Command (BRepFilletAPI_MakeFillet)
         where

newBRepFilletAPI_MakeFillet ::
                              (ITopoDS_Shape c0, FPtr c0) =>
                              c0 -> Word8 -> IO BRepFilletAPI_MakeFillet
newBRepFilletAPI_MakeFillet
  = xform1 c_brepfilletapi_makefillet_newbrepfilletapi_makefillet

bRepFilletAPI_MakeFillet_Add_R1R2_E ::
                                      (ITopoDS_Edge c0, FPtr c0) =>
                                      BRepFilletAPI_MakeFillet -> CDouble -> CDouble -> c0 -> IO ()
bRepFilletAPI_MakeFillet_Add_R1R2_E
  = xform3
      c_brepfilletapi_makefillet_brepfilletapi_makefillet_add_r1r2_e
