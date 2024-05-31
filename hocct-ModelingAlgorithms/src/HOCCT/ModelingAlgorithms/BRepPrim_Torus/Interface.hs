{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingAlgorithms.BRepPrim_Torus.Interface where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingAlgorithms.BRepPrim_Torus.RawType
import HOCCT.ModelingAlgorithms.BRepPrim_Revolution.Interface

class (IBRepPrim_Revolution a) => IBRepPrim_Torus a where

upcastBRepPrim_Torus ::
                     forall a . (FPtr a, IBRepPrim_Torus a) => a -> BRepPrim_Torus
upcastBRepPrim_Torus h
  = let fh = get_fptr h
        fh2 :: Ptr RawBRepPrim_Torus = castPtr fh
      in cast_fptr_to_obj fh2

downcastBRepPrim_Torus ::
                       forall a . (FPtr a, IBRepPrim_Torus a) => BRepPrim_Torus -> a
downcastBRepPrim_Torus h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
