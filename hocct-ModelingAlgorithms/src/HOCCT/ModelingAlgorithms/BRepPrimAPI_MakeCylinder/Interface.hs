{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeCylinder.Interface
       where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeCylinder.RawType
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeOneAxis.Interface

class (IBRepPrimAPI_MakeOneAxis a) => IBRepPrimAPI_MakeCylinder a
      where

upcastBRepPrimAPI_MakeCylinder ::
                               forall a . (FPtr a, IBRepPrimAPI_MakeCylinder a) =>
                                 a -> BRepPrimAPI_MakeCylinder
upcastBRepPrimAPI_MakeCylinder h
  = let fh = get_fptr h
        fh2 :: Ptr RawBRepPrimAPI_MakeCylinder = castPtr fh
      in cast_fptr_to_obj fh2

downcastBRepPrimAPI_MakeCylinder ::
                                 forall a . (FPtr a, IBRepPrimAPI_MakeCylinder a) =>
                                   BRepPrimAPI_MakeCylinder -> a
downcastBRepPrimAPI_MakeCylinder h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
