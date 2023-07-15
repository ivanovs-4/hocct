{-# LANGUAGE EmptyDataDecls, FlexibleContexts, FlexibleInstances,
  ForeignFunctionInterface, IncoherentInstances,
  MultiParamTypeClasses, OverlappingInstances, TemplateHaskell,
  TypeFamilies, TypeSynonymInstances #-}
module HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeSphere.Implementation
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
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeSphere.RawType
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeSphere.FFI
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeSphere.Interface
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeSphere.Cast
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeSphere.RawType
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeSphere.Cast
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeSphere.Interface
import HOCCT.ModelingData.TopoDS_Shape.RawType
import HOCCT.ModelingData.TopoDS_Shape.Cast
import HOCCT.ModelingData.TopoDS_Shape.Interface
import HOCCT.ModelingAlgorithms.BRepPrim_Sphere.RawType
import HOCCT.ModelingAlgorithms.BRepPrim_Sphere.Cast
import HOCCT.ModelingAlgorithms.BRepPrim_Sphere.Interface
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeOneAxis.RawType
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeOneAxis.Cast
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeOneAxis.Interface
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.Cast
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.Interface
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Command.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Command.Cast
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Command.Interface

instance () => IBRepPrimAPI_MakeSphere (BRepPrimAPI_MakeSphere)
         where

instance () => IBRepPrimAPI_MakeOneAxis (BRepPrimAPI_MakeSphere)
         where

instance () => IBRepBuilderAPI_MakeShape (BRepPrimAPI_MakeSphere)
         where
        shape = xform0 c_brepprimapi_makesphere_shape

instance () => IBRepBuilderAPI_Command (BRepPrimAPI_MakeSphere)
         where

newBRepPrimAPI_MakeSphere ::
                            () => CDouble -> IO BRepPrimAPI_MakeSphere
newBRepPrimAPI_MakeSphere
  = xform0 c_brepprimapi_makesphere_newbrepprimapi_makesphere

bRepPrimAPI_MakeSphere_Sphere ::
                                () => BRepPrimAPI_MakeSphere -> IO BRepPrim_Sphere
bRepPrimAPI_MakeSphere_Sphere
  = xform0 c_brepprimapi_makesphere_brepprimapi_makesphere_sphere
