{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingData.BRep_Builder.Interface where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingData.BRep_Builder.RawType
import HOCCT.ModelingData.TopoDS_Builder.Interface

class (ITopoDS_Builder a) => IBRep_Builder a where

upcastBRep_Builder ::
                   forall a . (FPtr a, IBRep_Builder a) => a -> BRep_Builder
upcastBRep_Builder h
  = let fh = get_fptr h
        fh2 :: Ptr RawBRep_Builder = castPtr fh
      in cast_fptr_to_obj fh2

downcastBRep_Builder ::
                     forall a . (FPtr a, IBRep_Builder a) => BRep_Builder -> a
downcastBRep_Builder h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
