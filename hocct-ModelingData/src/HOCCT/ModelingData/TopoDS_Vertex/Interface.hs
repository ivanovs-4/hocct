{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingData.TopoDS_Vertex.Interface where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingData.TopoDS_Vertex.RawType
import HOCCT.ModelingData.TopoDS_Shape.Interface

class (ITopoDS_Shape a) => ITopoDS_Vertex a where

upcastTopoDS_Vertex ::
                    forall a . (FPtr a, ITopoDS_Vertex a) => a -> TopoDS_Vertex
upcastTopoDS_Vertex h
  = let fh = get_fptr h
        fh2 :: Ptr RawTopoDS_Vertex = castPtr fh
      in cast_fptr_to_obj fh2

downcastTopoDS_Vertex ::
                      forall a . (FPtr a, ITopoDS_Vertex a) => TopoDS_Vertex -> a
downcastTopoDS_Vertex h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
