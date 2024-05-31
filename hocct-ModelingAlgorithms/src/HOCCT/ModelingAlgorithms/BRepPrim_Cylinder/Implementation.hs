{-# LANGUAGE EmptyDataDecls, FlexibleContexts, FlexibleInstances,
  ForeignFunctionInterface, IncoherentInstances,
  MultiParamTypeClasses, OverlappingInstances, TemplateHaskell,
  TypeFamilies, TypeSynonymInstances #-}
module HOCCT.ModelingAlgorithms.BRepPrim_Cylinder.Implementation
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
import HOCCT.ModelingAlgorithms.BRepPrim_Cylinder.RawType
import HOCCT.ModelingAlgorithms.BRepPrim_Cylinder.FFI
import HOCCT.ModelingAlgorithms.BRepPrim_Cylinder.Interface
import HOCCT.ModelingAlgorithms.BRepPrim_Cylinder.Cast
import HOCCT.ModelingAlgorithms.BRepPrim_Cylinder.RawType
import HOCCT.ModelingAlgorithms.BRepPrim_Cylinder.Cast
import HOCCT.ModelingAlgorithms.BRepPrim_Cylinder.Interface
import HOCCT.ModelingAlgorithms.BRepPrim_Revolution.RawType
import HOCCT.ModelingAlgorithms.BRepPrim_Revolution.Cast
import HOCCT.ModelingAlgorithms.BRepPrim_Revolution.Interface
import HOCCT.ModelingAlgorithms.BRepPrim_OneAxis.RawType
import HOCCT.ModelingAlgorithms.BRepPrim_OneAxis.Cast
import HOCCT.ModelingAlgorithms.BRepPrim_OneAxis.Interface

instance () => IBRepPrim_Cylinder (BRepPrim_Cylinder) where

instance () => IBRepPrim_Revolution (BRepPrim_Cylinder) where

instance () => IBRepPrim_OneAxis (BRepPrim_Cylinder) where

newBRepPrim_Cylinder ::
                       () => CDouble -> CDouble -> IO BRepPrim_Cylinder
newBRepPrim_Cylinder
  = xform1 c_brepprim_cylinder_newbrepprim_cylinder
