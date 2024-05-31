{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingAlgorithms.BRepPrim_Cylinder.Interface where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingAlgorithms.BRepPrim_Cylinder.RawType
import HOCCT.ModelingAlgorithms.BRepPrim_Revolution.Interface

class (IBRepPrim_Revolution a) => IBRepPrim_Cylinder a where

upcastBRepPrim_Cylinder ::
                        forall a . (FPtr a, IBRepPrim_Cylinder a) => a -> BRepPrim_Cylinder
upcastBRepPrim_Cylinder h
  = let fh = get_fptr h
        fh2 :: Ptr RawBRepPrim_Cylinder = castPtr fh
      in cast_fptr_to_obj fh2

downcastBRepPrim_Cylinder ::
                          forall a . (FPtr a, IBRepPrim_Cylinder a) => BRepPrim_Cylinder -> a
downcastBRepPrim_Cylinder h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
