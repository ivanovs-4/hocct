{-# LANGUAGE EmptyDataDecls, FlexibleContexts, FlexibleInstances,
  ForeignFunctionInterface, IncoherentInstances,
  MultiParamTypeClasses, OverlappingInstances, TemplateHaskell,
  TypeFamilies, TypeSynonymInstances #-}
module HOCCT.ModelingData.BRep_Builder.Implementation where
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
import HOCCT.ModelingData.BRep_Builder.RawType
import HOCCT.ModelingData.BRep_Builder.FFI
import HOCCT.ModelingData.BRep_Builder.Interface
import HOCCT.ModelingData.BRep_Builder.Cast
import HOCCT.ModelingData.BRep_Builder.RawType
import HOCCT.ModelingData.BRep_Builder.Cast
import HOCCT.ModelingData.BRep_Builder.Interface
import HOCCT.ModelingData.TopoDS_Wire.RawType
import HOCCT.ModelingData.TopoDS_Wire.Cast
import HOCCT.ModelingData.TopoDS_Wire.Interface
import HOCCT.ModelingData.TopoDS_Shell.RawType
import HOCCT.ModelingData.TopoDS_Shell.Cast
import HOCCT.ModelingData.TopoDS_Shell.Interface
import HOCCT.ModelingData.TopoDS_Solid.RawType
import HOCCT.ModelingData.TopoDS_Solid.Cast
import HOCCT.ModelingData.TopoDS_Solid.Interface
import HOCCT.ModelingData.TopoDS_Compound.RawType
import HOCCT.ModelingData.TopoDS_Compound.Cast
import HOCCT.ModelingData.TopoDS_Compound.Interface
import HOCCT.ModelingData.TopoDS_CompSolid.RawType
import HOCCT.ModelingData.TopoDS_CompSolid.Cast
import HOCCT.ModelingData.TopoDS_CompSolid.Interface
import HOCCT.ModelingData.TopoDS_Shape.RawType
import HOCCT.ModelingData.TopoDS_Shape.Cast
import HOCCT.ModelingData.TopoDS_Shape.Interface
import HOCCT.ModelingData.TopoDS_Face.RawType
import HOCCT.ModelingData.TopoDS_Face.Cast
import HOCCT.ModelingData.TopoDS_Face.Interface
import HOCCT.ModelingData.TopoDS_Builder.RawType
import HOCCT.ModelingData.TopoDS_Builder.Cast
import HOCCT.ModelingData.TopoDS_Builder.Interface

instance () => IBRep_Builder (BRep_Builder) where

instance () => ITopoDS_Builder (BRep_Builder) where

newBRep_Builder :: () => IO BRep_Builder
newBRep_Builder = xformnull c_brep_builder_newbrep_builder

bRep_Builder_MakeFace ::
                        (ITopoDS_Face c0, FPtr c0) => BRep_Builder -> c0 -> IO ()
bRep_Builder_MakeFace = xform1 c_brep_builder_brep_builder_makeface
