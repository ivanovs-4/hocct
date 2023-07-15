{-# LANGUAGE ForeignFunctionInterface, InterruptibleFFI #-}
module HOCCT.ModelingData.GCE_MakeScale.FFI where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import HOCCT.ModelingData.GCE_MakeScale.RawType
import HOCCT.ModelingData.GCE_MakeScale.RawType
import HOCCT.Foundation.GP_Trsf.RawType
import HOCCT.Foundation.GP_Pnt.RawType

foreign import ccall interruptible
               "HOCCT_ModelingData_GCE_MakeScale.h gce_MakeScale_newGCE_MakeScale"
               c_gce_makescale_newgce_makescale ::
               Ptr RawGP_Pnt -> CDouble -> IO (Ptr RawGCE_MakeScale)

foreign import ccall interruptible
               "HOCCT_ModelingData_GCE_MakeScale.h gce_MakeScale_gCE_MakeScale_Value"
               c_gce_makescale_gce_makescale_value ::
               Ptr RawGCE_MakeScale -> IO (Ptr RawGP_Trsf)
