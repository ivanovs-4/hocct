{-# LANGUAGE ForeignFunctionInterface, InterruptibleFFI #-}
module HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeWire.FFI where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeWire.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeWire.RawType
import HOCCT.ModelingData.TopoDS_Shape.RawType
import HOCCT.ModelingData.TopoDS_Wire.RawType
import HOCCT.ModelingData.TopoDS_Edge.RawType

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepBuilderAPI_MakeWire.h BRepBuilderAPI_MakeWire_Shape"
               c_brepbuilderapi_makewire_shape ::
               Ptr RawBRepBuilderAPI_MakeWire -> IO (Ptr RawTopoDS_Shape)

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepBuilderAPI_MakeWire.h BRepBuilderAPI_MakeWire_newBRepBuilderAPI_MakeWireE"
               c_brepbuilderapi_makewire_newbrepbuilderapi_makewiree ::
               Ptr RawTopoDS_Edge -> IO (Ptr RawBRepBuilderAPI_MakeWire)

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepBuilderAPI_MakeWire.h BRepBuilderAPI_MakeWire_newBRepBuilderAPI_MakeWireE2"
               c_brepbuilderapi_makewire_newbrepbuilderapi_makewiree2 ::
               Ptr RawTopoDS_Edge ->
                 Ptr RawTopoDS_Edge -> IO (Ptr RawBRepBuilderAPI_MakeWire)

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepBuilderAPI_MakeWire.h BRepBuilderAPI_MakeWire_newBRepBuilderAPI_MakeWireE3"
               c_brepbuilderapi_makewire_newbrepbuilderapi_makewiree3 ::
               Ptr RawTopoDS_Edge ->
                 Ptr RawTopoDS_Edge ->
                   Ptr RawTopoDS_Edge -> IO (Ptr RawBRepBuilderAPI_MakeWire)

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepBuilderAPI_MakeWire.h BRepBuilderAPI_MakeWire_newBRepBuilderAPI_MakeWireE4"
               c_brepbuilderapi_makewire_newbrepbuilderapi_makewiree4 ::
               Ptr RawTopoDS_Edge ->
                 Ptr RawTopoDS_Edge ->
                   Ptr RawTopoDS_Edge ->
                     Ptr RawTopoDS_Edge -> IO (Ptr RawBRepBuilderAPI_MakeWire)

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepBuilderAPI_MakeWire.h BRepBuilderAPI_MakeWire_bRepBuilderAPI_MakeWire_Add"
               c_brepbuilderapi_makewire_brepbuilderapi_makewire_add ::
               Ptr RawBRepBuilderAPI_MakeWire -> Ptr RawTopoDS_Edge -> IO ()

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepBuilderAPI_MakeWire.h BRepBuilderAPI_MakeWire_bRepBuilderAPI_MakeWire_Wire"
               c_brepbuilderapi_makewire_brepbuilderapi_makewire_wire ::
               Ptr RawBRepBuilderAPI_MakeWire -> IO (Ptr RawTopoDS_Wire)
