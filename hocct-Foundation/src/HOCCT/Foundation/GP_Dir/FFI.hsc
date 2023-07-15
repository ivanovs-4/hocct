{-# LANGUAGE ForeignFunctionInterface, InterruptibleFFI #-}
module HOCCT.Foundation.GP_Dir.FFI where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import HOCCT.Foundation.GP_Dir.RawType
import HOCCT.Foundation.GP_Dir.RawType
import HOCCT.Foundation.GP_Vec.RawType
import HOCCT.Foundation.GP_XYZ.RawType

foreign import ccall interruptible
               "HOCCT_Foundation_GP_Dir.h gp_Dir_newGP_Dir_FromVec"
               c_gp_dir_newgp_dir_fromvec :: Ptr RawGP_Vec -> IO (Ptr RawGP_Dir)

foreign import ccall interruptible
               "HOCCT_Foundation_GP_Dir.h gp_Dir_newGP_Dir_FromXYZ"
               c_gp_dir_newgp_dir_fromxyz :: Ptr RawGP_XYZ -> IO (Ptr RawGP_Dir)

foreign import ccall interruptible
               "HOCCT_Foundation_GP_Dir.h gp_Dir_newGP_Dir" c_gp_dir_newgp_dir ::
               CDouble -> CDouble -> CDouble -> IO (Ptr RawGP_Dir)
