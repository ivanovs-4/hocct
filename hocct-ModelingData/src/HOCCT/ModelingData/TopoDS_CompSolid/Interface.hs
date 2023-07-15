{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingData.TopoDS_CompSolid.Interface where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingData.TopoDS_CompSolid.RawType
import HOCCT.ModelingData.TopoDS_Shape.Interface

class (ITopoDS_Shape a) => ITopoDS_CompSolid a where

upcastTopoDS_CompSolid ::
                       forall a . (FPtr a, ITopoDS_CompSolid a) => a -> TopoDS_CompSolid
upcastTopoDS_CompSolid h
  = let fh = get_fptr h
        fh2 :: Ptr RawTopoDS_CompSolid = castPtr fh
      in cast_fptr_to_obj fh2

downcastTopoDS_CompSolid ::
                         forall a . (FPtr a, ITopoDS_CompSolid a) => TopoDS_CompSolid -> a
downcastTopoDS_CompSolid h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
