{-# LANGUAGE ForeignFunctionInterface, InterruptibleFFI #-}
module HOCCT.ModelingData.TopoDS_Builder.FFI where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import HOCCT.ModelingData.TopoDS_Builder.RawType
import HOCCT.ModelingData.TopoDS_Builder.RawType
import HOCCT.ModelingData.TopoDS_Wire.RawType
import HOCCT.ModelingData.TopoDS_Shell.RawType
import HOCCT.ModelingData.TopoDS_Solid.RawType
import HOCCT.ModelingData.TopoDS_Compound.RawType
import HOCCT.ModelingData.TopoDS_CompSolid.RawType
import HOCCT.ModelingData.TopoDS_Shape.RawType

foreign import ccall interruptible
               "HOCCT_ModelingData_TopoDS_Builder.h TopoDS_Builder_newTopoDS_Builder"
               c_topods_builder_newtopods_builder :: IO (Ptr RawTopoDS_Builder)

foreign import ccall interruptible
               "HOCCT_ModelingData_TopoDS_Builder.h TopoDS_Builder_topoDS_Builder_MakeWire"
               c_topods_builder_topods_builder_makewire ::
               Ptr RawTopoDS_Builder -> Ptr RawTopoDS_Wire -> IO ()

foreign import ccall interruptible
               "HOCCT_ModelingData_TopoDS_Builder.h TopoDS_Builder_topoDS_Builder_MakeShell"
               c_topods_builder_topods_builder_makeshell ::
               Ptr RawTopoDS_Builder -> Ptr RawTopoDS_Shell -> IO ()

foreign import ccall interruptible
               "HOCCT_ModelingData_TopoDS_Builder.h TopoDS_Builder_topoDS_Builder_MakeSolid"
               c_topods_builder_topods_builder_makesolid ::
               Ptr RawTopoDS_Builder -> Ptr RawTopoDS_Solid -> IO ()

foreign import ccall interruptible
               "HOCCT_ModelingData_TopoDS_Builder.h TopoDS_Builder_topoDS_Builder_MakeCompound"
               c_topods_builder_topods_builder_makecompound ::
               Ptr RawTopoDS_Builder -> Ptr RawTopoDS_Compound -> IO ()

foreign import ccall interruptible
               "HOCCT_ModelingData_TopoDS_Builder.h TopoDS_Builder_topoDS_Builder_MakeCompSolid"
               c_topods_builder_topods_builder_makecompsolid ::
               Ptr RawTopoDS_Builder -> Ptr RawTopoDS_CompSolid -> IO ()

foreign import ccall interruptible
               "HOCCT_ModelingData_TopoDS_Builder.h TopoDS_Builder_topoDS_Builder_Add"
               c_topods_builder_topods_builder_add ::
               Ptr RawTopoDS_Builder ->
                 Ptr RawTopoDS_Shape -> Ptr RawTopoDS_Shape -> IO ()
