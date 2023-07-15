{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingAlgorithms.BRepAlgoAPI_Algo.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawBRepAlgoAPI_Algo

newtype BRepAlgoAPI_Algo = BRepAlgoAPI_Algo (Ptr
                                               RawBRepAlgoAPI_Algo)
                             deriving (Eq, Ord, Show)

instance () => FPtr (BRepAlgoAPI_Algo) where
        type Raw BRepAlgoAPI_Algo = RawBRepAlgoAPI_Algo
        get_fptr (BRepAlgoAPI_Algo ptr) = ptr
        cast_fptr_to_obj = BRepAlgoAPI_Algo
