{-# LANGUAGE EmptyDataDecls, FlexibleContexts, FlexibleInstances,
  ForeignFunctionInterface, IncoherentInstances,
  MultiParamTypeClasses, OverlappingInstances, TemplateHaskell,
  TypeFamilies, TypeSynonymInstances #-}
module HOCCT.ModelingAlgorithms.BRepPrim_Torus.Implementation where
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
import HOCCT.ModelingAlgorithms.BRepPrim_Torus.RawType
import HOCCT.ModelingAlgorithms.BRepPrim_Torus.FFI
import HOCCT.ModelingAlgorithms.BRepPrim_Torus.Interface
import HOCCT.ModelingAlgorithms.BRepPrim_Torus.Cast
import HOCCT.ModelingAlgorithms.BRepPrim_Torus.RawType
import HOCCT.ModelingAlgorithms.BRepPrim_Torus.Cast
import HOCCT.ModelingAlgorithms.BRepPrim_Torus.Interface
import HOCCT.ModelingAlgorithms.BRepPrim_Revolution.RawType
import HOCCT.ModelingAlgorithms.BRepPrim_Revolution.Cast
import HOCCT.ModelingAlgorithms.BRepPrim_Revolution.Interface
import HOCCT.ModelingAlgorithms.BRepPrim_OneAxis.RawType
import HOCCT.ModelingAlgorithms.BRepPrim_OneAxis.Cast
import HOCCT.ModelingAlgorithms.BRepPrim_OneAxis.Interface

instance () => IBRepPrim_Torus (BRepPrim_Torus) where

instance () => IBRepPrim_Revolution (BRepPrim_Torus) where

instance () => IBRepPrim_OneAxis (BRepPrim_Torus) where

newBRepPrim_Torus :: () => CDouble -> CDouble -> IO BRepPrim_Torus
newBRepPrim_Torus = xform1 c_brepprim_torus_newbrepprim_torus
