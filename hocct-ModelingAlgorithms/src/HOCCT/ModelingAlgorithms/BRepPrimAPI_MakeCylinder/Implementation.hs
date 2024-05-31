{-# LANGUAGE EmptyDataDecls, FlexibleContexts, FlexibleInstances,
  ForeignFunctionInterface, IncoherentInstances,
  MultiParamTypeClasses, OverlappingInstances, TemplateHaskell,
  TypeFamilies, TypeSynonymInstances #-}
module HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeCylinder.Implementation
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
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeCylinder.RawType
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeCylinder.FFI
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeCylinder.Interface
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeCylinder.Cast
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeCylinder.RawType
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeCylinder.Cast
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeCylinder.Interface
import HOCCT.ModelingData.TopoDS_Solid.RawType
import HOCCT.ModelingData.TopoDS_Solid.Cast
import HOCCT.ModelingData.TopoDS_Solid.Interface
import HOCCT.ModelingData.TopoDS_Shape.RawType
import HOCCT.ModelingData.TopoDS_Shape.Cast
import HOCCT.ModelingData.TopoDS_Shape.Interface
import HOCCT.ModelingAlgorithms.BRepPrim_Cylinder.RawType
import HOCCT.ModelingAlgorithms.BRepPrim_Cylinder.Cast
import HOCCT.ModelingAlgorithms.BRepPrim_Cylinder.Interface
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeOneAxis.RawType
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeOneAxis.Cast
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeOneAxis.Interface
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.Cast
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.Interface
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Command.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Command.Cast
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Command.Interface

instance () => IBRepPrimAPI_MakeCylinder (BRepPrimAPI_MakeCylinder)
         where

instance () => IBRepPrimAPI_MakeOneAxis (BRepPrimAPI_MakeCylinder)
         where

instance () => IBRepBuilderAPI_MakeShape (BRepPrimAPI_MakeCylinder)
         where
        shape = xform0 c_brepprimapi_makecylinder_shape

instance () => IBRepBuilderAPI_Command (BRepPrimAPI_MakeCylinder)
         where

newBRepPrimAPI_MakeCylinder ::
                              () => CDouble -> CDouble -> IO BRepPrimAPI_MakeCylinder
newBRepPrimAPI_MakeCylinder
  = xform1 c_brepprimapi_makecylinder_newbrepprimapi_makecylinder

bRepPrimAPI_MakeCylinder_Cylinder ::
                                    () => BRepPrimAPI_MakeCylinder -> IO BRepPrim_Cylinder
bRepPrimAPI_MakeCylinder_Cylinder
  = xform0
      c_brepprimapi_makecylinder_brepprimapi_makecylinder_cylinder
