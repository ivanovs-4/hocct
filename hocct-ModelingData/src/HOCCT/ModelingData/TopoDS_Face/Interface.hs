{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingData.TopoDS_Face.Interface where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingData.TopoDS_Face.RawType
import HOCCT.ModelingData.TopoDS_Shape.Interface

class (ITopoDS_Shape a) => ITopoDS_Face a where

upcastTopoDS_Face ::
                  forall a . (FPtr a, ITopoDS_Face a) => a -> TopoDS_Face
upcastTopoDS_Face h
  = let fh = get_fptr h
        fh2 :: Ptr RawTopoDS_Face = castPtr fh
      in cast_fptr_to_obj fh2

downcastTopoDS_Face ::
                    forall a . (FPtr a, ITopoDS_Face a) => TopoDS_Face -> a
downcastTopoDS_Face h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
