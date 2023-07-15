{-# LANGUAGE ForeignFunctionInterface, InterruptibleFFI #-}
module HOCCT.Foundation.GP_Trsf.FFI where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import HOCCT.Foundation.GP_Trsf.RawType
import HOCCT.Foundation.GP_Trsf.RawType

foreign import ccall interruptible
               "HOCCT_Foundation_GP_Trsf.h gp_Trsf_gP_Trsf_Multiplied"
               c_gp_trsf_gp_trsf_multiplied ::
               Ptr RawGP_Trsf -> Ptr RawGP_Trsf -> IO (Ptr RawGP_Trsf)

foreign import ccall interruptible
               "HOCCT_Foundation_GP_Trsf.h gp_Trsf_gP_Trsf_Multiply"
               c_gp_trsf_gp_trsf_multiply ::
               Ptr RawGP_Trsf -> Ptr RawGP_Trsf -> IO ()

foreign import ccall interruptible
               "HOCCT_Foundation_GP_Trsf.h gp_Trsf_gP_Trsf_PreMultiply"
               c_gp_trsf_gp_trsf_premultiply ::
               Ptr RawGP_Trsf -> Ptr RawGP_Trsf -> IO ()

foreign import ccall interruptible
               "HOCCT_Foundation_GP_Trsf.h gp_Trsf_gP_Trsf_Inverted"
               c_gp_trsf_gp_trsf_inverted :: Ptr RawGP_Trsf -> IO (Ptr RawGP_Trsf)

foreign import ccall interruptible
               "HOCCT_Foundation_GP_Trsf.h gp_Trsf_gP_Trsf_Invert"
               c_gp_trsf_gp_trsf_invert :: Ptr RawGP_Trsf -> IO ()
