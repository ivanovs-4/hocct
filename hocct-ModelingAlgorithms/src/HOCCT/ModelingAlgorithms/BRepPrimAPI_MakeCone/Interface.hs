{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeCone.Interface
       where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeCone.RawType
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeOneAxis.Interface

class (IBRepPrimAPI_MakeOneAxis a) => IBRepPrimAPI_MakeCone a where

upcastBRepPrimAPI_MakeCone ::
                           forall a . (FPtr a, IBRepPrimAPI_MakeCone a) =>
                             a -> BRepPrimAPI_MakeCone
upcastBRepPrimAPI_MakeCone h
  = let fh = get_fptr h
        fh2 :: Ptr RawBRepPrimAPI_MakeCone = castPtr fh
      in cast_fptr_to_obj fh2

downcastBRepPrimAPI_MakeCone ::
                             forall a . (FPtr a, IBRepPrimAPI_MakeCone a) =>
                               BRepPrimAPI_MakeCone -> a
downcastBRepPrimAPI_MakeCone h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
