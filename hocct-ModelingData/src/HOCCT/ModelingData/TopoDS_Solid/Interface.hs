{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingData.TopoDS_Solid.Interface where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingData.TopoDS_Solid.RawType
import HOCCT.ModelingData.TopoDS_Shape.Interface

class (ITopoDS_Shape a) => ITopoDS_Solid a where

upcastTopoDS_Solid ::
                   forall a . (FPtr a, ITopoDS_Solid a) => a -> TopoDS_Solid
upcastTopoDS_Solid h
  = let fh = get_fptr h
        fh2 :: Ptr RawTopoDS_Solid = castPtr fh
      in cast_fptr_to_obj fh2

downcastTopoDS_Solid ::
                     forall a . (FPtr a, ITopoDS_Solid a) => TopoDS_Solid -> a
downcastTopoDS_Solid h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
