{-# LANGUAGE ForeignFunctionInterface, InterruptibleFFI #-}
module HOCCT.Foundation.GP_Lin.FFI where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import HOCCT.Foundation.GP_Lin.RawType
import HOCCT.Foundation.GP_Lin.RawType
import HOCCT.Foundation.GP_Pnt.RawType
import HOCCT.Foundation.GP_Dir.RawType

foreign import ccall interruptible
               "HOCCT_Foundation_GP_Lin.h gp_Lin_newGP_Lin" c_gp_lin_newgp_lin ::
               Ptr RawGP_Pnt -> Ptr RawGP_Dir -> IO (Ptr RawGP_Lin)
