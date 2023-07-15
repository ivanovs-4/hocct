{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingData.TopoDS_Wire.Interface where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingData.TopoDS_Wire.RawType
import HOCCT.ModelingData.TopoDS_Shape.Interface

class (ITopoDS_Shape a) => ITopoDS_Wire a where

upcastTopoDS_Wire ::
                  forall a . (FPtr a, ITopoDS_Wire a) => a -> TopoDS_Wire
upcastTopoDS_Wire h
  = let fh = get_fptr h
        fh2 :: Ptr RawTopoDS_Wire = castPtr fh
      in cast_fptr_to_obj fh2

downcastTopoDS_Wire ::
                    forall a . (FPtr a, ITopoDS_Wire a) => TopoDS_Wire -> a
downcastTopoDS_Wire h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
