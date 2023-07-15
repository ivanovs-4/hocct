{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.Interface
       where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.RawType
import HOCCT.ModelingData.TopoDS_Shape.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Command.Interface

class (IBRepBuilderAPI_Command a) => IBRepBuilderAPI_MakeShape a
      where
        shape :: () => a -> IO TopoDS_Shape

upcastBRepBuilderAPI_MakeShape ::
                               forall a . (FPtr a, IBRepBuilderAPI_MakeShape a) =>
                                 a -> BRepBuilderAPI_MakeShape
upcastBRepBuilderAPI_MakeShape h
  = let fh = get_fptr h
        fh2 :: Ptr RawBRepBuilderAPI_MakeShape = castPtr fh
      in cast_fptr_to_obj fh2

downcastBRepBuilderAPI_MakeShape ::
                                 forall a . (FPtr a, IBRepBuilderAPI_MakeShape a) =>
                                   BRepBuilderAPI_MakeShape -> a
downcastBRepBuilderAPI_MakeShape h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
