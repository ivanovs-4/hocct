{-# LANGUAGE EmptyDataDecls, FlexibleContexts, FlexibleInstances,
  ForeignFunctionInterface, IncoherentInstances,
  MultiParamTypeClasses, OverlappingInstances, TemplateHaskell,
  TypeFamilies, TypeSynonymInstances #-}
module HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeTorus.Implementation
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
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeTorus.RawType
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeTorus.FFI
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeTorus.Interface
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeTorus.Cast
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeTorus.RawType
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeTorus.Cast
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeTorus.Interface
import HOCCT.ModelingData.TopoDS_Solid.RawType
import HOCCT.ModelingData.TopoDS_Solid.Cast
import HOCCT.ModelingData.TopoDS_Solid.Interface
import HOCCT.ModelingData.TopoDS_Shape.RawType
import HOCCT.ModelingData.TopoDS_Shape.Cast
import HOCCT.ModelingData.TopoDS_Shape.Interface
import HOCCT.ModelingAlgorithms.BRepPrim_Torus.RawType
import HOCCT.ModelingAlgorithms.BRepPrim_Torus.Cast
import HOCCT.ModelingAlgorithms.BRepPrim_Torus.Interface
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeOneAxis.RawType
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeOneAxis.Cast
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeOneAxis.Interface
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.Cast
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.Interface
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Command.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Command.Cast
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Command.Interface

instance () => IBRepPrimAPI_MakeTorus (BRepPrimAPI_MakeTorus) where

instance () => IBRepPrimAPI_MakeOneAxis (BRepPrimAPI_MakeTorus)
         where

instance () => IBRepBuilderAPI_MakeShape (BRepPrimAPI_MakeTorus)
         where
        shape = xform0 c_brepprimapi_maketorus_shape

instance () => IBRepBuilderAPI_Command (BRepPrimAPI_MakeTorus)
         where

newBRepPrimAPI_MakeTorus ::
                           () => CDouble -> CDouble -> IO BRepPrimAPI_MakeTorus
newBRepPrimAPI_MakeTorus
  = xform1 c_brepprimapi_maketorus_newbrepprimapi_maketorus

bRepPrimAPI_MakeTorus_Torus ::
                              () => BRepPrimAPI_MakeTorus -> IO BRepPrim_Torus
bRepPrimAPI_MakeTorus_Torus
  = xform0 c_brepprimapi_maketorus_brepprimapi_maketorus_torus
