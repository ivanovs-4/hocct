{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingData.TopoDS_Shell.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawTopoDS_Shell

newtype TopoDS_Shell = TopoDS_Shell (Ptr RawTopoDS_Shell)
                         deriving (Eq, Ord, Show)

instance () => FPtr (TopoDS_Shell) where
        type Raw TopoDS_Shell = RawTopoDS_Shell
        get_fptr (TopoDS_Shell ptr) = ptr
        cast_fptr_to_obj = TopoDS_Shell
