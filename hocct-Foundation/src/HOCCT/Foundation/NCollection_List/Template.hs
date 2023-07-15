{-# LANGUAGE EmptyDataDecls, FlexibleInstances,
  MultiParamTypeClasses, TypeFamilies #-}
module HOCCT.Foundation.NCollection_List.Template where
import Foreign.C.Types
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawNCollection_List theItemType

newtype NCollection_List theItemType = NCollection_List (Ptr
                                                           (RawNCollection_List theItemType))

class () => INCollection_List theItemType where
        newNCollection_List :: IO (NCollection_List theItemType)
        
        nCollection_List_Append ::
                                NCollection_List theItemType -> theItemType -> IO theItemType

instance () => FPtr (NCollection_List theItemType) where
        type Raw (NCollection_List theItemType) =
             RawNCollection_List theItemType
        get_fptr (NCollection_List ptr) = ptr
        cast_fptr_to_obj = NCollection_List

instance () =>
         Castable (NCollection_List theItemType)
           (Ptr (RawNCollection_List theItemType))
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))
