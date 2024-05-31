{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeWedge.Interface
       where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeWedge.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.Interface

class (IBRepBuilderAPI_MakeShape a) => IBRepPrimAPI_MakeWedge a
      where

upcastBRepPrimAPI_MakeWedge ::
                            forall a . (FPtr a, IBRepPrimAPI_MakeWedge a) =>
                              a -> BRepPrimAPI_MakeWedge
upcastBRepPrimAPI_MakeWedge h
  = let fh = get_fptr h
        fh2 :: Ptr RawBRepPrimAPI_MakeWedge = castPtr fh
      in cast_fptr_to_obj fh2

downcastBRepPrimAPI_MakeWedge ::
                              forall a . (FPtr a, IBRepPrimAPI_MakeWedge a) =>
                                BRepPrimAPI_MakeWedge -> a
downcastBRepPrimAPI_MakeWedge h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
