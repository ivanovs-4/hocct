{-# LANGUAGE EmptyDataDecls, FlexibleContexts, FlexibleInstances,
  ForeignFunctionInterface, IncoherentInstances,
  MultiParamTypeClasses, OverlappingInstances, TemplateHaskell,
  TypeFamilies, TypeSynonymInstances #-}
module HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeFace.Implementation
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
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeFace.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeFace.FFI
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeFace.Interface
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeFace.Cast
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeFace.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeFace.Cast
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeFace.Interface
import HOCCT.ModelingData.TopoDS_Shape.RawType
import HOCCT.ModelingData.TopoDS_Shape.Cast
import HOCCT.ModelingData.TopoDS_Shape.Interface
import HOCCT.ModelingData.TopoDS_Face.RawType
import HOCCT.ModelingData.TopoDS_Face.Cast
import HOCCT.ModelingData.TopoDS_Face.Interface
import HOCCT.ModelingData.TopoDS_Wire.RawType
import HOCCT.ModelingData.TopoDS_Wire.Cast
import HOCCT.ModelingData.TopoDS_Wire.Interface
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.Cast
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.Interface
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Command.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Command.Cast
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Command.Interface

instance () => IBRepBuilderAPI_MakeFace (BRepBuilderAPI_MakeFace)
         where

instance () => IBRepBuilderAPI_MakeShape (BRepBuilderAPI_MakeFace)
         where
        shape = xform0 c_brepbuilderapi_makeface_shape

instance () => IBRepBuilderAPI_Command (BRepBuilderAPI_MakeFace)
         where

newBRepBuilderAPI_MakeFaceW ::
                              (ITopoDS_Wire c0, FPtr c0) =>
                              c0 -> CBool -> IO BRepBuilderAPI_MakeFace
newBRepBuilderAPI_MakeFaceW
  = xform1 c_brepbuilderapi_makeface_newbrepbuilderapi_makefacew

bRepBuilderAPI_MakeFace_Face ::
                               () => BRepBuilderAPI_MakeFace -> IO TopoDS_Face
bRepBuilderAPI_MakeFace_Face
  = xform0 c_brepbuilderapi_makeface_brepbuilderapi_makeface_face
