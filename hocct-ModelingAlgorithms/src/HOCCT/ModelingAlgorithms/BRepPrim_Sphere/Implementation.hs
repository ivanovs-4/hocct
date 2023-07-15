{-# LANGUAGE EmptyDataDecls, FlexibleContexts, FlexibleInstances,
  ForeignFunctionInterface, IncoherentInstances,
  MultiParamTypeClasses, OverlappingInstances, TemplateHaskell,
  TypeFamilies, TypeSynonymInstances #-}
module HOCCT.ModelingAlgorithms.BRepPrim_Sphere.Implementation
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
import HOCCT.ModelingAlgorithms.BRepPrim_Sphere.RawType
import HOCCT.ModelingAlgorithms.BRepPrim_Sphere.FFI
import HOCCT.ModelingAlgorithms.BRepPrim_Sphere.Interface
import HOCCT.ModelingAlgorithms.BRepPrim_Sphere.Cast
import HOCCT.ModelingAlgorithms.BRepPrim_Sphere.RawType
import HOCCT.ModelingAlgorithms.BRepPrim_Sphere.Cast
import HOCCT.ModelingAlgorithms.BRepPrim_Sphere.Interface
import HOCCT.ModelingAlgorithms.BRepPrim_Revolution.RawType
import HOCCT.ModelingAlgorithms.BRepPrim_Revolution.Cast
import HOCCT.ModelingAlgorithms.BRepPrim_Revolution.Interface
import HOCCT.ModelingAlgorithms.BRepPrim_OneAxis.RawType
import HOCCT.ModelingAlgorithms.BRepPrim_OneAxis.Cast
import HOCCT.ModelingAlgorithms.BRepPrim_OneAxis.Interface

instance () => IBRepPrim_Sphere (BRepPrim_Sphere) where

instance () => IBRepPrim_Revolution (BRepPrim_Sphere) where

instance () => IBRepPrim_OneAxis (BRepPrim_Sphere) where

newBRepPrim_Sphere :: () => CDouble -> IO BRepPrim_Sphere
newBRepPrim_Sphere = xform0 c_brepprim_sphere_newbrepprim_sphere
