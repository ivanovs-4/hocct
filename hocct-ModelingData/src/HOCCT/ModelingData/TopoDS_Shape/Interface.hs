{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingData.TopoDS_Shape.Interface where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingData.TopoDS_Shape.RawType

class () => ITopoDS_Shape a where

upcastTopoDS_Shape ::
                   forall a . (FPtr a, ITopoDS_Shape a) => a -> TopoDS_Shape
upcastTopoDS_Shape h
  = let fh = get_fptr h
        fh2 :: Ptr RawTopoDS_Shape = castPtr fh
      in cast_fptr_to_obj fh2

downcastTopoDS_Shape ::
                     forall a . (FPtr a, ITopoDS_Shape a) => TopoDS_Shape -> a
downcastTopoDS_Shape h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
