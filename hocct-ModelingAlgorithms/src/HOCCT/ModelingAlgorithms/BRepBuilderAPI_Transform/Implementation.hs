{-# LANGUAGE EmptyDataDecls, FlexibleContexts, FlexibleInstances,
  ForeignFunctionInterface, IncoherentInstances,
  MultiParamTypeClasses, OverlappingInstances, TemplateHaskell,
  TypeFamilies, TypeSynonymInstances #-}
module HOCCT.ModelingAlgorithms.BRepBuilderAPI_Transform.Implementation
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
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Transform.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Transform.FFI
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Transform.Interface
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Transform.Cast
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Transform.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Transform.Cast
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Transform.Interface
import HOCCT.ModelingData.TopoDS_Shape.RawType
import HOCCT.ModelingData.TopoDS_Shape.Cast
import HOCCT.ModelingData.TopoDS_Shape.Interface
import HOCCT.Foundation.GP_Trsf.RawType
import HOCCT.Foundation.GP_Trsf.Cast
import HOCCT.Foundation.GP_Trsf.Interface
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_ModifyShape.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_ModifyShape.Cast
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_ModifyShape.Interface
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.Cast
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.Interface
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Command.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Command.Cast
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Command.Interface

instance () => IBRepBuilderAPI_Transform (BRepBuilderAPI_Transform)
         where

instance () =>
         IBRepBuilderAPI_ModifyShape (BRepBuilderAPI_Transform)
         where

instance () => IBRepBuilderAPI_MakeShape (BRepBuilderAPI_Transform)
         where
        shape = xform0 c_brepbuilderapi_transform_shape

instance () => IBRepBuilderAPI_Command (BRepBuilderAPI_Transform)
         where

newBRepBuilderAPI_Transform ::
                              (IGP_Trsf c0, FPtr c0) => c0 -> IO BRepBuilderAPI_Transform
newBRepBuilderAPI_Transform
  = xform0 c_brepbuilderapi_transform_newbrepbuilderapi_transform

newBRepBuilderAPI_Transform_FromShape ::
                                        (IGP_Trsf c1, FPtr c1, ITopoDS_Shape c0, FPtr c0) =>
                                        c0 -> c1 -> CBool -> IO BRepBuilderAPI_Transform
newBRepBuilderAPI_Transform_FromShape
  = xform2
      c_brepbuilderapi_transform_newbrepbuilderapi_transform_fromshape

bRepBuilderAPI_Transform_Perform ::
                                   (ITopoDS_Shape c0, FPtr c0) =>
                                   BRepBuilderAPI_Transform -> c0 -> CBool -> IO ()
bRepBuilderAPI_Transform_Perform
  = xform2
      c_brepbuilderapi_transform_brepbuilderapi_transform_perform
