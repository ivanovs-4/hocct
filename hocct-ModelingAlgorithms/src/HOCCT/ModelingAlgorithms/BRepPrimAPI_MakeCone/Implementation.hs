{-# LANGUAGE EmptyDataDecls, FlexibleContexts, FlexibleInstances,
  ForeignFunctionInterface, IncoherentInstances,
  MultiParamTypeClasses, OverlappingInstances, TemplateHaskell,
  TypeFamilies, TypeSynonymInstances #-}
module HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeCone.Implementation
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
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeCone.RawType
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeCone.FFI
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeCone.Interface
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeCone.Cast
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeCone.RawType
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeCone.Cast
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeCone.Interface
import HOCCT.ModelingData.TopoDS_Solid.RawType
import HOCCT.ModelingData.TopoDS_Solid.Cast
import HOCCT.ModelingData.TopoDS_Solid.Interface
import HOCCT.ModelingData.TopoDS_Shape.RawType
import HOCCT.ModelingData.TopoDS_Shape.Cast
import HOCCT.ModelingData.TopoDS_Shape.Interface
import HOCCT.ModelingAlgorithms.BRepPrim_Cone.RawType
import HOCCT.ModelingAlgorithms.BRepPrim_Cone.Cast
import HOCCT.ModelingAlgorithms.BRepPrim_Cone.Interface
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeOneAxis.RawType
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeOneAxis.Cast
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeOneAxis.Interface
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.Cast
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.Interface
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Command.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Command.Cast
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Command.Interface

instance () => IBRepPrimAPI_MakeCone (BRepPrimAPI_MakeCone) where

instance () => IBRepPrimAPI_MakeOneAxis (BRepPrimAPI_MakeCone)
         where

instance () => IBRepBuilderAPI_MakeShape (BRepPrimAPI_MakeCone)
         where
        shape = xform0 c_brepprimapi_makecone_shape

instance () => IBRepBuilderAPI_Command (BRepPrimAPI_MakeCone) where

newBRepPrimAPI_MakeCone ::
                          () => CDouble -> CDouble -> CDouble -> IO BRepPrimAPI_MakeCone
newBRepPrimAPI_MakeCone
  = xform2 c_brepprimapi_makecone_newbrepprimapi_makecone

bRepPrimAPI_MakeCone_Cone ::
                            () => BRepPrimAPI_MakeCone -> IO BRepPrim_Cone
bRepPrimAPI_MakeCone_Cone
  = xform0 c_brepprimapi_makecone_brepprimapi_makecone_cone
