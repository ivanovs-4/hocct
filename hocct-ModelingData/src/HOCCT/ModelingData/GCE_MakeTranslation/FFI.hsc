{-# LANGUAGE ForeignFunctionInterface, InterruptibleFFI #-}
module HOCCT.ModelingData.GCE_MakeTranslation.FFI where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import HOCCT.ModelingData.GCE_MakeTranslation.RawType
import HOCCT.ModelingData.GCE_MakeTranslation.RawType
import HOCCT.Foundation.GP_Trsf.RawType
import HOCCT.Foundation.GP_Vec.RawType
import HOCCT.Foundation.GP_Pnt.RawType

foreign import ccall interruptible
               "HOCCT_ModelingData_GCE_MakeTranslation.h gce_MakeTranslation_newGCE_MakeTranslation_FromVec"
               c_gce_maketranslation_newgce_maketranslation_fromvec ::
               Ptr RawGP_Vec -> IO (Ptr RawGCE_MakeTranslation)

foreign import ccall interruptible
               "HOCCT_ModelingData_GCE_MakeTranslation.h gce_MakeTranslation_newGCE_MakeTranslation_FromP1P2"
               c_gce_maketranslation_newgce_maketranslation_fromp1p2 ::
               Ptr RawGP_Pnt -> Ptr RawGP_Pnt -> IO (Ptr RawGCE_MakeTranslation)

foreign import ccall interruptible
               "HOCCT_ModelingData_GCE_MakeTranslation.h gce_MakeTranslation_gCE_MakeTranslation_Value"
               c_gce_maketranslation_gce_maketranslation_value ::
               Ptr RawGCE_MakeTranslation -> IO (Ptr RawGP_Trsf)
