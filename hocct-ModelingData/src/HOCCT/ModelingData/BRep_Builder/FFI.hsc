{-# LANGUAGE ForeignFunctionInterface, InterruptibleFFI #-}
module HOCCT.ModelingData.BRep_Builder.FFI where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import HOCCT.ModelingData.BRep_Builder.RawType
import HOCCT.ModelingData.BRep_Builder.RawType
import HOCCT.ModelingData.TopoDS_Wire.RawType
import HOCCT.ModelingData.TopoDS_Shell.RawType
import HOCCT.ModelingData.TopoDS_Solid.RawType
import HOCCT.ModelingData.TopoDS_Compound.RawType
import HOCCT.ModelingData.TopoDS_CompSolid.RawType
import HOCCT.ModelingData.TopoDS_Shape.RawType
import HOCCT.ModelingData.TopoDS_Face.RawType

foreign import ccall interruptible
               "HOCCT_ModelingData_BRep_Builder.h BRep_Builder_newBRep_Builder"
               c_brep_builder_newbrep_builder :: IO (Ptr RawBRep_Builder)

foreign import ccall interruptible
               "HOCCT_ModelingData_BRep_Builder.h BRep_Builder_bRep_Builder_MakeFace"
               c_brep_builder_brep_builder_makeface ::
               Ptr RawBRep_Builder -> Ptr RawTopoDS_Face -> IO ()
