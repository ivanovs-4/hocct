{-# LANGUAGE ForeignFunctionInterface, InterruptibleFFI #-}
module HOCCT.ModelingData.GCE_MakeMirror.FFI where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import HOCCT.ModelingData.GCE_MakeMirror.RawType
import HOCCT.ModelingData.GCE_MakeMirror.RawType
import HOCCT.Foundation.GP_Trsf.RawType
import HOCCT.Foundation.GP_Pnt.RawType
import HOCCT.Foundation.GP_Lin.RawType
import HOCCT.Foundation.GP_Dir.RawType
import HOCCT.Foundation.GP_Pln.RawType

foreign import ccall interruptible
               "HOCCT_ModelingData_GCE_MakeMirror.h gce_MakeMirror_newGCE_MakeMirror_FromPoint"
               c_gce_makemirror_newgce_makemirror_frompoint ::
               Ptr RawGP_Pnt -> IO (Ptr RawGCE_MakeMirror)

foreign import ccall interruptible
               "HOCCT_ModelingData_GCE_MakeMirror.h gce_MakeMirror_newGCE_MakeMirror_FromLine"
               c_gce_makemirror_newgce_makemirror_fromline ::
               Ptr RawGP_Lin -> IO (Ptr RawGCE_MakeMirror)

foreign import ccall interruptible
               "HOCCT_ModelingData_GCE_MakeMirror.h gce_MakeMirror_newGCE_MakeMirror_FromPointDirection"
               c_gce_makemirror_newgce_makemirror_frompointdirection ::
               Ptr RawGP_Pnt -> Ptr RawGP_Dir -> IO (Ptr RawGCE_MakeMirror)

foreign import ccall interruptible
               "HOCCT_ModelingData_GCE_MakeMirror.h gce_MakeMirror_newGCE_MakeMirror_FromPlane"
               c_gce_makemirror_newgce_makemirror_fromplane ::
               Ptr RawGP_Pln -> IO (Ptr RawGCE_MakeMirror)

foreign import ccall interruptible
               "HOCCT_ModelingData_GCE_MakeMirror.h gce_MakeMirror_gCE_MakeMirror_Value"
               c_gce_makemirror_gce_makemirror_value ::
               Ptr RawGCE_MakeMirror -> IO (Ptr RawGP_Trsf)
