{-# LANGUAGE EmptyDataDecls, FlexibleContexts, FlexibleInstances,
  ForeignFunctionInterface, IncoherentInstances,
  MultiParamTypeClasses, OverlappingInstances, TemplateHaskell,
  TypeFamilies, TypeSynonymInstances #-}
module HOCCT.ModelingAlgorithms.BRepBuilderAPI_Copy.Implementation
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
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Copy.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Copy.FFI
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Copy.Interface
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Copy.Cast
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Copy.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Copy.Cast
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Copy.Interface
import HOCCT.ModelingData.TopoDS_Shape.RawType
import HOCCT.ModelingData.TopoDS_Shape.Cast
import HOCCT.ModelingData.TopoDS_Shape.Interface
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_ModifyShape.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_ModifyShape.Cast
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_ModifyShape.Interface
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.Cast
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.Interface
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Command.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Command.Cast
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Command.Interface

instance () => IBRepBuilderAPI_Copy (BRepBuilderAPI_Copy) where

instance () => IBRepBuilderAPI_ModifyShape (BRepBuilderAPI_Copy)
         where

instance () => IBRepBuilderAPI_MakeShape (BRepBuilderAPI_Copy)
         where
        shape = xform0 c_brepbuilderapi_copy_shape

instance () => IBRepBuilderAPI_Command (BRepBuilderAPI_Copy) where

newBRepBuilderAPI_Copy :: () => IO BRepBuilderAPI_Copy
newBRepBuilderAPI_Copy
  = xformnull c_brepbuilderapi_copy_newbrepbuilderapi_copy

newBRepBuilderAPI_Copy_Shape ::
                               (ITopoDS_Shape c0, FPtr c0) =>
                               c0 -> CBool -> CBool -> IO BRepBuilderAPI_Copy
newBRepBuilderAPI_Copy_Shape
  = xform2 c_brepbuilderapi_copy_newbrepbuilderapi_copy_shape

bRepBuilderAPI_Copy_Perform ::
                              (ITopoDS_Shape c0, FPtr c0) => BRepBuilderAPI_Copy -> c0 -> IO ()
bRepBuilderAPI_Copy_Perform
  = xform1 c_brepbuilderapi_copy_brepbuilderapi_copy_perform
