{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingData.TopoDS_CompSolid.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawTopoDS_CompSolid

newtype TopoDS_CompSolid = TopoDS_CompSolid (Ptr
                                               RawTopoDS_CompSolid)
                             deriving (Eq, Ord, Show)

instance () => FPtr (TopoDS_CompSolid) where
        type Raw TopoDS_CompSolid = RawTopoDS_CompSolid
        get_fptr (TopoDS_CompSolid ptr) = ptr
        cast_fptr_to_obj = TopoDS_CompSolid
