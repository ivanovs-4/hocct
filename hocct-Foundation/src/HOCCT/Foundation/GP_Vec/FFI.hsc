{-# LANGUAGE ForeignFunctionInterface, InterruptibleFFI #-}
module HOCCT.Foundation.GP_Vec.FFI where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import HOCCT.Foundation.GP_Vec.RawType
import HOCCT.Foundation.GP_Vec.RawType
import HOCCT.Foundation.GP_XYZ.RawType
import HOCCT.Foundation.GP_Pnt.RawType

foreign import ccall interruptible
               "HOCCT_Foundation_GP_Vec.h gp_Vec_newGP_Vec_FromXYZ"
               c_gp_vec_newgp_vec_fromxyz :: Ptr RawGP_XYZ -> IO (Ptr RawGP_Vec)

foreign import ccall interruptible
               "HOCCT_Foundation_GP_Vec.h gp_Vec_newGP_Vec" c_gp_vec_newgp_vec ::
               CDouble -> CDouble -> CDouble -> IO (Ptr RawGP_Vec)

foreign import ccall interruptible
               "HOCCT_Foundation_GP_Vec.h gp_Vec_newGP_Vec_FromP1P2"
               c_gp_vec_newgp_vec_fromp1p2 ::
               Ptr RawGP_Pnt -> Ptr RawGP_Pnt -> IO (Ptr RawGP_Vec)
