{-# LANGUAGE EmptyDataDecls, FlexibleContexts, FlexibleInstances,
  ForeignFunctionInterface, IncoherentInstances,
  MultiParamTypeClasses, OverlappingInstances, TemplateHaskell,
  TypeFamilies, TypeSynonymInstances #-}
module HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeWedge.Implementation
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
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeWedge.RawType
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeWedge.FFI
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeWedge.Interface
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeWedge.Cast
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeWedge.RawType
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeWedge.Cast
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeWedge.Interface
import HOCCT.ModelingData.TopoDS_Shape.RawType
import HOCCT.ModelingData.TopoDS_Shape.Cast
import HOCCT.ModelingData.TopoDS_Shape.Interface
import HOCCT.ModelingData.TopoDS_Solid.RawType
import HOCCT.ModelingData.TopoDS_Solid.Cast
import HOCCT.ModelingData.TopoDS_Solid.Interface
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.Cast
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.Interface
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Command.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Command.Cast
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Command.Interface

instance () => IBRepPrimAPI_MakeWedge (BRepPrimAPI_MakeWedge) where

instance () => IBRepBuilderAPI_MakeShape (BRepPrimAPI_MakeWedge)
         where
        shape = xform0 c_brepprimapi_makewedge_shape

instance () => IBRepBuilderAPI_Command (BRepPrimAPI_MakeWedge)
         where

newBRepPrimAPI_MakeWedge ::
                           () =>
                           CDouble ->
                             CDouble -> CDouble -> CDouble -> IO BRepPrimAPI_MakeWedge
newBRepPrimAPI_MakeWedge
  = xform3 c_brepprimapi_makewedge_newbrepprimapi_makewedge

bRepPrimAPI_MakeWedge_Solid ::
                              () => BRepPrimAPI_MakeWedge -> IO TopoDS_Solid
bRepPrimAPI_MakeWedge_Solid
  = xform0 c_brepprimapi_makewedge_brepprimapi_makewedge_solid
