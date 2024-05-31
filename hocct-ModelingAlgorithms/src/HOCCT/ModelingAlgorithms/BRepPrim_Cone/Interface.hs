{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingAlgorithms.BRepPrim_Cone.Interface where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingAlgorithms.BRepPrim_Cone.RawType
import HOCCT.ModelingAlgorithms.BRepPrim_Revolution.Interface

class (IBRepPrim_Revolution a) => IBRepPrim_Cone a where

upcastBRepPrim_Cone ::
                    forall a . (FPtr a, IBRepPrim_Cone a) => a -> BRepPrim_Cone
upcastBRepPrim_Cone h
  = let fh = get_fptr h
        fh2 :: Ptr RawBRepPrim_Cone = castPtr fh
      in cast_fptr_to_obj fh2

downcastBRepPrim_Cone ::
                      forall a . (FPtr a, IBRepPrim_Cone a) => BRepPrim_Cone -> a
downcastBRepPrim_Cone h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
