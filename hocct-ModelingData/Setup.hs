{-# LANGUAGE BlockArguments #-}
{-# LANGUAGE LambdaCase #-}

import Distribution.Simple

import Data.Function
import Data.Functor
import Data.List as List
import Data.Maybe
import Distribution.PackageDescription
import Distribution.Simple
import Distribution.Simple.LocalBuildInfo
import Distribution.Simple.Setup
import System.Exit
import System.Process

config :: LocalBuildInfo -> IO (Maybe HookedBuildInfo)
config bInfo = do
    pure do
        buildInfo :: BuildInfo <- (fmap libBuildInfo . library . localPkgDescr) bInfo
        let hbInfo =
                buildInfo
                    { extraLibs = extraLibs buildInfo <>
                        -- ls "$(nix-build --no-out-link '<nixpkgs>' -A opencascade-occt)/lib"/*.so | sed -rn 's/\S+\/lib(.+).so/\1/p'
                        -- 7.6.2
                        (List.words " \
                          \ TKBinL TKBin TKBinTObj TKBinXCAF TKBool TKBO TKBRep  \
                          \ TKCAF TKCDF TKDCAF TKDraw TKernel TKFeat TKFillet    \
                          \ TKG2d TKG3d TKGeomAlgo TKGeomBase TKHLR TKLCAF       \
                          \ TKMath TKMesh TKMeshVS TKOffset TKOpenGl             \
                          \ TKOpenGlTest TKPrim TKQADraw TKRWMesh TKService      \
                          \ TKShHealing TKStdL TKStd TKTObjDRAW TKTObj TKTopAlgo \
                          \ TKTopTest TKV3d TKVCAF TKViewerTest TKXCAF TKXDEDRAW \
                          \ TKXMesh TKXmlL TKXml TKXmlTObj TKXmlXCAF TKXSBase    \
                          \ TKXSDRAW                                             \
                          \ ")
                    , extraLibDirs = extraLibDirs buildInfo <> []
                    , includeDirs = includeDirs buildInfo <> []
                    }
        Just (Just hbInfo, [])

hook ::
      (GenericPackageDescription, HookedBuildInfo)
   -> ConfigFlags
   -> IO LocalBuildInfo
hook x y = confHook simpleUserHooks x y >>= \lbInfo -> do

    let lpDescr = localPkgDescr lbInfo

    lpdescr' :: PackageDescription <- do
        config lbInfo <&> \case
            Just hbInfo -> updatePackageDescription hbInfo lpDescr
            Nothing -> lpDescr
                { library = library lpDescr <&> \lib ->
                      ( lib {libBuildInfo = (libBuildInfo lib) {cSources = []}}
                      )
                }

    -- putStrLn ("XXXXX " <> show lpdescr')
    pure (lbInfo {localPkgDescr = lpdescr'})


-- main = defaultMain
main = defaultMainWithHooks (simpleUserHooks {confHook = hook})
