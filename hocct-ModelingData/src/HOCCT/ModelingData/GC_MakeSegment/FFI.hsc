{-# LANGUAGE ForeignFunctionInterface, InterruptibleFFI #-}
module HOCCT.ModelingData.GC_MakeSegment.FFI where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import HOCCT.ModelingData.GC_MakeSegment.RawType
import HOCCT.ModelingData.GC_MakeSegment.RawType
import HOCCT.Foundation.Standard_Handle.Template
import HOCCT.ModelingData.Geom_TrimmedCurve.RawType
import HOCCT.Foundation.GP_Pnt.RawType

foreign import ccall interruptible
               "HOCCT_ModelingData_GC_MakeSegment.h GC_MakeSegment_newGC_MakeSegment"
               c_gc_makesegment_newgc_makesegment ::
               Ptr RawGP_Pnt -> Ptr RawGP_Pnt -> IO (Ptr RawGC_MakeSegment)

foreign import ccall interruptible
               "HOCCT_ModelingData_GC_MakeSegment.h GC_MakeSegment_gC_MakeSegment_Value"
               c_gc_makesegment_gc_makesegment_value ::
               Ptr RawGC_MakeSegment ->
                 IO (Ptr (RawStandard_Handle Geom_TrimmedCurve))
