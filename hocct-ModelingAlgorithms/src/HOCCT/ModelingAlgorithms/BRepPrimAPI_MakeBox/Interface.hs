{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeBox.Interface where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeBox.RawType
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeOneAxis.Interface

class (IBRepPrimAPI_MakeOneAxis a) => IBRepPrimAPI_MakeBox a where

upcastBRepPrimAPI_MakeBox ::
                          forall a . (FPtr a, IBRepPrimAPI_MakeBox a) =>
                            a -> BRepPrimAPI_MakeBox
upcastBRepPrimAPI_MakeBox h
  = let fh = get_fptr h
        fh2 :: Ptr RawBRepPrimAPI_MakeBox = castPtr fh
      in cast_fptr_to_obj fh2

downcastBRepPrimAPI_MakeBox ::
                            forall a . (FPtr a, IBRepPrimAPI_MakeBox a) =>
                              BRepPrimAPI_MakeBox -> a
downcastBRepPrimAPI_MakeBox h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
