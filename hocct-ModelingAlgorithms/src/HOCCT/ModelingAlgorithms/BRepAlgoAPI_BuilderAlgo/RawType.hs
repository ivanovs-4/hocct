{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingAlgorithms.BRepAlgoAPI_BuilderAlgo.RawType
       where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawBRepAlgoAPI_BuilderAlgo

newtype BRepAlgoAPI_BuilderAlgo = BRepAlgoAPI_BuilderAlgo (Ptr
                                                             RawBRepAlgoAPI_BuilderAlgo)
                                    deriving (Eq, Ord, Show)

instance () => FPtr (BRepAlgoAPI_BuilderAlgo) where
        type Raw BRepAlgoAPI_BuilderAlgo = RawBRepAlgoAPI_BuilderAlgo
        get_fptr (BRepAlgoAPI_BuilderAlgo ptr) = ptr
        cast_fptr_to_obj = BRepAlgoAPI_BuilderAlgo
