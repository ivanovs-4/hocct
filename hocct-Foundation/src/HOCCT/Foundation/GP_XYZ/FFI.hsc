{-# LANGUAGE ForeignFunctionInterface, InterruptibleFFI #-}
module HOCCT.Foundation.GP_XYZ.FFI where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import HOCCT.Foundation.GP_XYZ.RawType
import HOCCT.Foundation.GP_XYZ.RawType

foreign import ccall interruptible
               "HOCCT_Foundation_GP_XYZ.h gp_XYZ_newGP_XYZ" c_gp_xyz_newgp_xyz ::
               CDouble -> CDouble -> CDouble -> IO (Ptr RawGP_XYZ)
