{-# LANGUAGE ForeignFunctionInterface, InterruptibleFFI #-}
module HOCCT.ModelingData.GCE_MakeRotation.FFI where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import HOCCT.ModelingData.GCE_MakeRotation.RawType
import HOCCT.ModelingData.GCE_MakeRotation.RawType
import HOCCT.Foundation.GP_Trsf.RawType
import HOCCT.Foundation.GP_Lin.RawType
import HOCCT.Foundation.GP_Pnt.RawType
import HOCCT.Foundation.GP_Dir.RawType

foreign import ccall interruptible
               "HOCCT_ModelingData_GCE_MakeRotation.h gce_MakeRotation_newGCE_MakeRotation_LineAngle"
               c_gce_makerotation_newgce_makerotation_lineangle ::
               Ptr RawGP_Lin -> CDouble -> IO (Ptr RawGCE_MakeRotation)

foreign import ccall interruptible
               "HOCCT_ModelingData_GCE_MakeRotation.h gce_MakeRotation_newGCE_MakeRotation_PointDirectionAngle"
               c_gce_makerotation_newgce_makerotation_pointdirectionangle ::
               Ptr RawGP_Pnt ->
                 Ptr RawGP_Dir -> CDouble -> IO (Ptr RawGCE_MakeRotation)

foreign import ccall interruptible
               "HOCCT_ModelingData_GCE_MakeRotation.h gce_MakeRotation_gCE_MakeRotation_Value"
               c_gce_makerotation_gce_makerotation_value ::
               Ptr RawGCE_MakeRotation -> IO (Ptr RawGP_Trsf)
