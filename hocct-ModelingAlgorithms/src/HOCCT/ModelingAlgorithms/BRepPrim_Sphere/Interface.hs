{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingAlgorithms.BRepPrim_Sphere.Interface where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingAlgorithms.BRepPrim_Sphere.RawType
import HOCCT.ModelingAlgorithms.BRepPrim_Revolution.Interface

class (IBRepPrim_Revolution a) => IBRepPrim_Sphere a where

upcastBRepPrim_Sphere ::
                      forall a . (FPtr a, IBRepPrim_Sphere a) => a -> BRepPrim_Sphere
upcastBRepPrim_Sphere h
  = let fh = get_fptr h
        fh2 :: Ptr RawBRepPrim_Sphere = castPtr fh
      in cast_fptr_to_obj fh2

downcastBRepPrim_Sphere ::
                        forall a . (FPtr a, IBRepPrim_Sphere a) => BRepPrim_Sphere -> a
downcastBRepPrim_Sphere h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
