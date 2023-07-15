{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingData.TopoDS_Shell.Interface where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingData.TopoDS_Shell.RawType
import HOCCT.ModelingData.TopoDS_Shape.Interface

class (ITopoDS_Shape a) => ITopoDS_Shell a where

upcastTopoDS_Shell ::
                   forall a . (FPtr a, ITopoDS_Shell a) => a -> TopoDS_Shell
upcastTopoDS_Shell h
  = let fh = get_fptr h
        fh2 :: Ptr RawTopoDS_Shell = castPtr fh
      in cast_fptr_to_obj fh2

downcastTopoDS_Shell ::
                     forall a . (FPtr a, ITopoDS_Shell a) => TopoDS_Shell -> a
downcastTopoDS_Shell h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
