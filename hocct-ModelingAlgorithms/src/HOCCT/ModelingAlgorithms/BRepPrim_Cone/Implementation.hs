{-# LANGUAGE EmptyDataDecls, FlexibleContexts, FlexibleInstances,
  ForeignFunctionInterface, IncoherentInstances,
  MultiParamTypeClasses, OverlappingInstances, TemplateHaskell,
  TypeFamilies, TypeSynonymInstances #-}
module HOCCT.ModelingAlgorithms.BRepPrim_Cone.Implementation where
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
import HOCCT.ModelingAlgorithms.BRepPrim_Cone.RawType
import HOCCT.ModelingAlgorithms.BRepPrim_Cone.FFI
import HOCCT.ModelingAlgorithms.BRepPrim_Cone.Interface
import HOCCT.ModelingAlgorithms.BRepPrim_Cone.Cast
import HOCCT.ModelingAlgorithms.BRepPrim_Cone.RawType
import HOCCT.ModelingAlgorithms.BRepPrim_Cone.Cast
import HOCCT.ModelingAlgorithms.BRepPrim_Cone.Interface
import HOCCT.ModelingAlgorithms.BRepPrim_Revolution.RawType
import HOCCT.ModelingAlgorithms.BRepPrim_Revolution.Cast
import HOCCT.ModelingAlgorithms.BRepPrim_Revolution.Interface
import HOCCT.ModelingAlgorithms.BRepPrim_OneAxis.RawType
import HOCCT.ModelingAlgorithms.BRepPrim_OneAxis.Cast
import HOCCT.ModelingAlgorithms.BRepPrim_OneAxis.Interface

instance () => IBRepPrim_Cone (BRepPrim_Cone) where

instance () => IBRepPrim_Revolution (BRepPrim_Cone) where

instance () => IBRepPrim_OneAxis (BRepPrim_Cone) where

newBRepPrim_Cone ::
                   () => CDouble -> CDouble -> CDouble -> IO BRepPrim_Cone
newBRepPrim_Cone = xform2 c_brepprim_cone_newbrepprim_cone
