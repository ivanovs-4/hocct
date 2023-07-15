{-# LANGUAGE EmptyDataDecls, FlexibleContexts, FlexibleInstances,
  ForeignFunctionInterface, IncoherentInstances,
  MultiParamTypeClasses, OverlappingInstances, TemplateHaskell,
  TypeFamilies, TypeSynonymInstances #-}
module HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeSolid.Implementation
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
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeSolid.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeSolid.FFI
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeSolid.Interface
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeSolid.Cast
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeSolid.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeSolid.Cast
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeSolid.Interface
import HOCCT.ModelingData.TopoDS_Shape.RawType
import HOCCT.ModelingData.TopoDS_Shape.Cast
import HOCCT.ModelingData.TopoDS_Shape.Interface
import HOCCT.ModelingData.TopoDS_Solid.RawType
import HOCCT.ModelingData.TopoDS_Solid.Cast
import HOCCT.ModelingData.TopoDS_Solid.Interface
import HOCCT.ModelingData.TopoDS_Shell.RawType
import HOCCT.ModelingData.TopoDS_Shell.Cast
import HOCCT.ModelingData.TopoDS_Shell.Interface
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.Cast
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.Interface
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Command.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Command.Cast
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Command.Interface

instance () => IBRepBuilderAPI_MakeSolid (BRepBuilderAPI_MakeSolid)
         where

instance () => IBRepBuilderAPI_MakeShape (BRepBuilderAPI_MakeSolid)
         where
        shape = xform0 c_brepbuilderapi_makesolid_shape

instance () => IBRepBuilderAPI_Command (BRepBuilderAPI_MakeSolid)
         where

newBRepBuilderAPI_MakeSolid ::
                              (ITopoDS_Shell c0, FPtr c0) => c0 -> IO BRepBuilderAPI_MakeSolid
newBRepBuilderAPI_MakeSolid
  = xform0 c_brepbuilderapi_makesolid_newbrepbuilderapi_makesolid

bRepBuilderAPI_MakeSolid_Solid ::
                                 () => BRepBuilderAPI_MakeSolid -> IO TopoDS_Solid
bRepBuilderAPI_MakeSolid_Solid
  = xform0 c_brepbuilderapi_makesolid_brepbuilderapi_makesolid_solid
