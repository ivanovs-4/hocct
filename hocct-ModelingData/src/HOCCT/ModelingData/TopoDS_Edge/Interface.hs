{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingData.TopoDS_Edge.Interface where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingData.TopoDS_Edge.RawType
import HOCCT.ModelingData.TopoDS_Shape.Interface

class (ITopoDS_Shape a) => ITopoDS_Edge a where

upcastTopoDS_Edge ::
                  forall a . (FPtr a, ITopoDS_Edge a) => a -> TopoDS_Edge
upcastTopoDS_Edge h
  = let fh = get_fptr h
        fh2 :: Ptr RawTopoDS_Edge = castPtr fh
      in cast_fptr_to_obj fh2

downcastTopoDS_Edge ::
                    forall a . (FPtr a, ITopoDS_Edge a) => TopoDS_Edge -> a
downcastTopoDS_Edge h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
