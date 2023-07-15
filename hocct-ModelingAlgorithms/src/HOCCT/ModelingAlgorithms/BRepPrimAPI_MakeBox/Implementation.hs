{-# LANGUAGE EmptyDataDecls, FlexibleContexts, FlexibleInstances,
  ForeignFunctionInterface, IncoherentInstances,
  MultiParamTypeClasses, OverlappingInstances, TemplateHaskell,
  TypeFamilies, TypeSynonymInstances #-}
module HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeBox.Implementation
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
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeBox.RawType
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeBox.FFI
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeBox.Interface
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeBox.Cast
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeBox.RawType
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeBox.Cast
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeBox.Interface
import HOCCT.ModelingData.TopoDS_Shape.RawType
import HOCCT.ModelingData.TopoDS_Shape.Cast
import HOCCT.ModelingData.TopoDS_Shape.Interface
import HOCCT.ModelingData.TopoDS_Shell.RawType
import HOCCT.ModelingData.TopoDS_Shell.Cast
import HOCCT.ModelingData.TopoDS_Shell.Interface
import HOCCT.ModelingData.TopoDS_Solid.RawType
import HOCCT.ModelingData.TopoDS_Solid.Cast
import HOCCT.ModelingData.TopoDS_Solid.Interface
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeOneAxis.RawType
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeOneAxis.Cast
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeOneAxis.Interface
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.Cast
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.Interface
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Command.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Command.Cast
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Command.Interface

instance () => IBRepPrimAPI_MakeBox (BRepPrimAPI_MakeBox) where

instance () => IBRepPrimAPI_MakeOneAxis (BRepPrimAPI_MakeBox) where

instance () => IBRepBuilderAPI_MakeShape (BRepPrimAPI_MakeBox)
         where
        shape = xform0 c_brepprimapi_makebox_shape

instance () => IBRepBuilderAPI_Command (BRepPrimAPI_MakeBox) where

newBRepPrimAPI_MakeBox ::
                         () => CDouble -> CDouble -> CDouble -> IO BRepPrimAPI_MakeBox
newBRepPrimAPI_MakeBox
  = xform2 c_brepprimapi_makebox_newbrepprimapi_makebox

bRepPrimAPI_MakeBox_Shell ::
                            () => BRepPrimAPI_MakeBox -> IO TopoDS_Shell
bRepPrimAPI_MakeBox_Shell
  = xform0 c_brepprimapi_makebox_brepprimapi_makebox_shell

bRepPrimAPI_MakeBox_Solid ::
                            () => BRepPrimAPI_MakeBox -> IO TopoDS_Solid
bRepPrimAPI_MakeBox_Solid
  = xform0 c_brepprimapi_makebox_brepprimapi_makebox_solid
