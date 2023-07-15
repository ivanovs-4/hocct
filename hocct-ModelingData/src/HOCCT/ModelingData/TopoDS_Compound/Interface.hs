{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingData.TopoDS_Compound.Interface where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingData.TopoDS_Compound.RawType
import HOCCT.ModelingData.TopoDS_Shape.Interface

class (ITopoDS_Shape a) => ITopoDS_Compound a where

upcastTopoDS_Compound ::
                      forall a . (FPtr a, ITopoDS_Compound a) => a -> TopoDS_Compound
upcastTopoDS_Compound h
  = let fh = get_fptr h
        fh2 :: Ptr RawTopoDS_Compound = castPtr fh
      in cast_fptr_to_obj fh2

downcastTopoDS_Compound ::
                        forall a . (FPtr a, ITopoDS_Compound a) => TopoDS_Compound -> a
downcastTopoDS_Compound h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
