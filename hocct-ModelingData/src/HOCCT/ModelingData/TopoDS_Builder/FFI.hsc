{-# LANGUAGE ForeignFunctionInterface, InterruptibleFFI #-}
module HOCCT.ModelingData.TopoDS_Builder.FFI where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import HOCCT.ModelingData.TopoDS_Builder.RawType
import HOCCT.ModelingData.TopoDS_Builder.RawType
import HOCCT.ModelingData.TopoDS_Compound.RawType
import HOCCT.ModelingData.TopoDS_Shape.RawType

foreign import ccall interruptible
               "HOCCT_ModelingData_TopoDS_Builder.h TopoDS_Builder_newTopoDS_Builder"
               c_topods_builder_newtopods_builder :: IO (Ptr RawTopoDS_Builder)

foreign import ccall interruptible
               "HOCCT_ModelingData_TopoDS_Builder.h TopoDS_Builder_topoDS_Builder_MakeCompound"
               c_topods_builder_topods_builder_makecompound ::
               Ptr RawTopoDS_Builder -> Ptr RawTopoDS_Compound -> IO ()

foreign import ccall interruptible
               "HOCCT_ModelingData_TopoDS_Builder.h TopoDS_Builder_topoDS_Builder_Add"
               c_topods_builder_topods_builder_add ::
               Ptr RawTopoDS_Builder ->
                 Ptr RawTopoDS_Shape -> Ptr RawTopoDS_Shape -> IO ()
