{-# LANGUAGE ForeignFunctionInterface, InterruptibleFFI #-}
module HOCCT.ModelingAlgorithms.BRepFill_Filling.FFI where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import HOCCT.ModelingAlgorithms.BRepFill_Filling.RawType
import HOCCT.ModelingAlgorithms.BRepFill_Filling.RawType
import HOCCT.ModelingData.TopoDS_Face.RawType
import HOCCT.Foundation.GP_Pnt.RawType
import HOCCT.ModelingData.TopoDS_Edge.RawType

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepFill_Filling.h BRepFill_Filling_newBRepFill_Filling"
               c_brepfill_filling_newbrepfill_filling ::
               IO (Ptr RawBRepFill_Filling)

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepFill_Filling.h BRepFill_Filling_bRepFill_Filling_AddPoint"
               c_brepfill_filling_brepfill_filling_addpoint ::
               Ptr RawBRepFill_Filling -> Ptr RawGP_Pnt -> IO CInt

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepFill_Filling.h BRepFill_Filling_bRepFill_Filling_AddEdge"
               c_brepfill_filling_brepfill_filling_addedge ::
               Ptr RawBRepFill_Filling ->
                 Ptr RawTopoDS_Edge -> Word8 -> CBool -> IO CInt

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepFill_Filling.h BRepFill_Filling_bRepFill_Filling_Build"
               c_brepfill_filling_brepfill_filling_build ::
               Ptr RawBRepFill_Filling -> IO ()

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepFill_Filling.h BRepFill_Filling_bRepFill_Filling_Face"
               c_brepfill_filling_brepfill_filling_face ::
               Ptr RawBRepFill_Filling -> IO (Ptr RawTopoDS_Face)
