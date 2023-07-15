{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingData.TopoDS_Edge.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawTopoDS_Edge

newtype TopoDS_Edge = TopoDS_Edge (Ptr RawTopoDS_Edge)
                        deriving (Eq, Ord, Show)

instance () => FPtr (TopoDS_Edge) where
        type Raw TopoDS_Edge = RawTopoDS_Edge
        get_fptr (TopoDS_Edge ptr) = ptr
        cast_fptr_to_obj = TopoDS_Edge
