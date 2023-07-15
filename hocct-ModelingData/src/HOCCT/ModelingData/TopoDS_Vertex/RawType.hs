{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingData.TopoDS_Vertex.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawTopoDS_Vertex

newtype TopoDS_Vertex = TopoDS_Vertex (Ptr RawTopoDS_Vertex)
                          deriving (Eq, Ord, Show)

instance () => FPtr (TopoDS_Vertex) where
        type Raw TopoDS_Vertex = RawTopoDS_Vertex
        get_fptr (TopoDS_Vertex ptr) = ptr
        cast_fptr_to_obj = TopoDS_Vertex
