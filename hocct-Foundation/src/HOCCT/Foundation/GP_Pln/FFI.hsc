{-# LANGUAGE ForeignFunctionInterface, InterruptibleFFI #-}
module HOCCT.Foundation.GP_Pln.FFI where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import HOCCT.Foundation.GP_Pln.RawType
import HOCCT.Foundation.GP_Pln.RawType
import HOCCT.Foundation.GP_Pnt.RawType
import HOCCT.Foundation.GP_Dir.RawType

foreign import ccall interruptible
               "HOCCT_Foundation_GP_Pln.h gp_Pln_newGP_Pln_OXY"
               c_gp_pln_newgp_pln_oxy :: IO (Ptr RawGP_Pln)

foreign import ccall interruptible
               "HOCCT_Foundation_GP_Pln.h gp_Pln_newGP_Pln" c_gp_pln_newgp_pln ::
               Ptr RawGP_Pnt -> Ptr RawGP_Dir -> IO (Ptr RawGP_Pln)

foreign import ccall interruptible
               "HOCCT_Foundation_GP_Pln.h gp_Pln_newGP_Pln_CartesianABCD"
               c_gp_pln_newgp_pln_cartesianabcd ::
               CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr RawGP_Pln)
