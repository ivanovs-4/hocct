{-# LANGUAGE EmptyDataDecls, FlexibleContexts, FlexibleInstances,
  ForeignFunctionInterface, IncoherentInstances,
  MultiParamTypeClasses, OverlappingInstances, TemplateHaskell,
  TypeFamilies, TypeSynonymInstances #-}
module HOCCT.ModelingData.TopoDS_Builder.Implementation where
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
import HOCCT.ModelingData.TopoDS_Builder.RawType
import HOCCT.ModelingData.TopoDS_Builder.FFI
import HOCCT.ModelingData.TopoDS_Builder.Interface
import HOCCT.ModelingData.TopoDS_Builder.Cast
import HOCCT.ModelingData.TopoDS_Builder.RawType
import HOCCT.ModelingData.TopoDS_Builder.Cast
import HOCCT.ModelingData.TopoDS_Builder.Interface
import HOCCT.ModelingData.TopoDS_Compound.RawType
import HOCCT.ModelingData.TopoDS_Compound.Cast
import HOCCT.ModelingData.TopoDS_Compound.Interface
import HOCCT.ModelingData.TopoDS_Shape.RawType
import HOCCT.ModelingData.TopoDS_Shape.Cast
import HOCCT.ModelingData.TopoDS_Shape.Interface

instance () => ITopoDS_Builder (TopoDS_Builder) where

instance () => ITopoDS_Shape (TopoDS_Builder) where

newTopoDS_Builder :: () => IO TopoDS_Builder
newTopoDS_Builder = xformnull c_topods_builder_newtopods_builder

topoDS_Builder_MakeCompound ::
                              (ITopoDS_Compound c0, FPtr c0) => TopoDS_Builder -> c0 -> IO ()
topoDS_Builder_MakeCompound
  = xform1 c_topods_builder_topods_builder_makecompound

topoDS_Builder_Add ::
                     (ITopoDS_Shape c1, FPtr c1, ITopoDS_Shape c0, FPtr c0) =>
                     TopoDS_Builder -> c0 -> c1 -> IO ()
topoDS_Builder_Add = xform2 c_topods_builder_topods_builder_add
