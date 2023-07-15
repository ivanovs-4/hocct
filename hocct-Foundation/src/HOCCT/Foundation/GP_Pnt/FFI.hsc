{-# LANGUAGE ForeignFunctionInterface, InterruptibleFFI #-}
module HOCCT.Foundation.GP_Pnt.FFI where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import HOCCT.Foundation.GP_Pnt.RawType
import HOCCT.Foundation.GP_Pnt.RawType
import HOCCT.Foundation.GP_XYZ.RawType

foreign import ccall interruptible
               "HOCCT_Foundation_GP_Pnt.h gp_Pnt_newGP_Pnt" c_gp_pnt_newgp_pnt ::
               CDouble -> CDouble -> CDouble -> IO (Ptr RawGP_Pnt)

foreign import ccall interruptible
               "HOCCT_Foundation_GP_Pnt.h gp_Pnt_newGP_Pnt_FromXYZ"
               c_gp_pnt_newgp_pnt_fromxyz :: Ptr RawGP_XYZ -> IO (Ptr RawGP_Pnt)
