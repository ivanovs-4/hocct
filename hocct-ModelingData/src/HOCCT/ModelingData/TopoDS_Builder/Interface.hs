{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingData.TopoDS_Builder.Interface where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingData.TopoDS_Builder.RawType
import HOCCT.ModelingData.TopoDS_Shape.Interface

class (ITopoDS_Shape a) => ITopoDS_Builder a where

upcastTopoDS_Builder ::
                     forall a . (FPtr a, ITopoDS_Builder a) => a -> TopoDS_Builder
upcastTopoDS_Builder h
  = let fh = get_fptr h
        fh2 :: Ptr RawTopoDS_Builder = castPtr fh
      in cast_fptr_to_obj fh2

downcastTopoDS_Builder ::
                       forall a . (FPtr a, ITopoDS_Builder a) => TopoDS_Builder -> a
downcastTopoDS_Builder h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
