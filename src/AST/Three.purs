module AST.Three where

import Data.Variant (inj)
import Type.Proxy (Proxy(..))
import TSAST as T

ast :: T.SourceFile
ast = T.SourceFile
  { importDeclaration:
      [ T.ImportDeclaration
          { importClause: T.ImportClause
              { namedImports_or_namespaceImport: inj
                  (Proxy :: Proxy "namespaceImport")
                  ( T.NamespaceImport
                      { identifier: T.Identifier { text: "MathUtils" } }
                  )
              }
          , stringLiteral: T.StringLiteral { text: "'./math/MathUtils'" }
          }
      ]
  , interfaceDeclaration: []
  , classDeclaration_or_moduleDeclaration_or_firstStatement_or_exportDeclaration_or_typeAliasDeclaration_or_functionDeclaration_or_enumDeclaration:
      inj (Proxy :: Proxy "exportDeclaration")
        [ T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./constants'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./Three.Legacy'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./utils'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                ( T.StringLiteral
                    { text: "'./animation/tracks/VectorKeyframeTrack'" }
                )
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                ( T.StringLiteral
                    { text: "'./animation/tracks/StringKeyframeTrack'" }
                )
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                ( T.StringLiteral
                    { text: "'./animation/tracks/QuaternionKeyframeTrack'" }
                )
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                ( T.StringLiteral
                    { text: "'./animation/tracks/NumberKeyframeTrack'" }
                )
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                ( T.StringLiteral
                    { text: "'./animation/tracks/ColorKeyframeTrack'" }
                )
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                ( T.StringLiteral
                    { text: "'./animation/tracks/BooleanKeyframeTrack'" }
                )
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./animation/PropertyMixer'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./animation/PropertyBinding'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./animation/KeyframeTrack'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./animation/AnimationUtils'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./animation/AnimationObjectGroup'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./animation/AnimationMixer'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./animation/AnimationClip'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./animation/AnimationAction'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./audio/AudioListener'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./audio/PositionalAudio'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./audio/AudioContext'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./audio/AudioAnalyser'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./audio/Audio'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./cameras/StereoCamera'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./cameras/PerspectiveCamera'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./cameras/OrthographicCamera'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./cameras/CubeCamera'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./cameras/ArrayCamera'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./cameras/Camera'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./core/Uniform'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./core/InstancedBufferGeometry'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./core/BufferGeometry'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                ( T.StringLiteral
                    { text: "'./core/InterleavedBufferAttribute'" }
                )
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                ( T.StringLiteral
                    { text: "'./core/InstancedInterleavedBuffer'" }
                )
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./core/InterleavedBuffer'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./core/InstancedBufferAttribute'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./core/GLBufferAttribute'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./core/BufferAttribute'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./core/Object3D'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./core/Raycaster'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./core/Layers'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./core/EventDispatcher'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./core/Clock'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./extras/curves/Curves'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./extras/core/Shape'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./extras/core/Path'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./extras/core/ShapePath'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./extras/core/CurvePath'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./extras/core/Curve'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./extras/DataUtils'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./extras/ImageUtils'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./extras/ShapeUtils'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./extras/PMREMGenerator'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./geometries/Geometries'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./helpers/SpotLightHelper'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./helpers/SkeletonHelper'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./helpers/PointLightHelper'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./helpers/HemisphereLightHelper'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./helpers/GridHelper'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./helpers/PolarGridHelper'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./helpers/DirectionalLightHelper'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./helpers/CameraHelper'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./helpers/BoxHelper'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./helpers/Box3Helper'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./helpers/PlaneHelper'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./helpers/ArrowHelper'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./helpers/AxesHelper'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./lights/SpotLightShadow'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./lights/SpotLight'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./lights/PointLight'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./lights/PointLightShadow'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./lights/RectAreaLight'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./lights/HemisphereLight'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./lights/DirectionalLightShadow'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./lights/DirectionalLight'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./lights/AmbientLight'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./lights/LightShadow'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./lights/Light'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./lights/AmbientLightProbe'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./lights/HemisphereLightProbe'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./lights/LightProbe'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./loaders/AnimationLoader'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                ( T.StringLiteral
                    { text: "'./loaders/CompressedTextureLoader'" }
                )
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./loaders/DataTextureLoader'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./loaders/CubeTextureLoader'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./loaders/TextureLoader'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./loaders/ObjectLoader'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./loaders/MaterialLoader'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./loaders/BufferGeometryLoader'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./loaders/LoadingManager'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./loaders/ImageLoader'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./loaders/ImageBitmapLoader'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./loaders/FileLoader'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./loaders/Loader'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./loaders/LoaderUtils'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./loaders/Cache'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./loaders/AudioLoader'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./materials/Materials'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                ( T.StringLiteral
                    { text: "'./math/interpolants/QuaternionLinearInterpolant'"
                    }
                )
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                ( T.StringLiteral
                    { text: "'./math/interpolants/LinearInterpolant'" }
                )
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                ( T.StringLiteral
                    { text: "'./math/interpolants/DiscreteInterpolant'" }
                )
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                ( T.StringLiteral
                    { text: "'./math/interpolants/CubicInterpolant'" }
                )
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./math/Interpolant'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./math/Triangle'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./math/Spherical'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./math/Cylindrical'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./math/Plane'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./math/Frustum'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./math/Sphere'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./math/Ray'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./math/Matrix4'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./math/Matrix3'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./math/Box3'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./math/Box2'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./math/Line3'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./math/Euler'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./math/Vector4'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./math/Vector3'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./math/Vector2'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./math/Quaternion'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./math/Color'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./math/SphericalHarmonics3'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj (Proxy :: Proxy "namedExports")
                ( T.NamedExports
                    { exportSpecifier:
                        [ T.ExportSpecifier
                            { identifier: [ T.Identifier { text: "MathUtils" } ]
                            }
                        ]
                    }
                )
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./objects/Sprite'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./objects/LOD'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./objects/InstancedMesh'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./objects/SkinnedMesh'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./objects/Skeleton'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./objects/Bone'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./objects/Mesh'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./objects/LineSegments'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./objects/LineLoop'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./objects/Line'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./objects/Points'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./objects/Group'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                ( T.StringLiteral
                    { text: "'./renderers/WebGLMultisampleRenderTarget'" }
                )
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                ( T.StringLiteral
                    { text: "'./renderers/WebGLCubeRenderTarget'" }
                )
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                ( T.StringLiteral
                    { text: "'./renderers/WebGLMultipleRenderTargets'" }
                )
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./renderers/WebGLRenderTarget'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./renderers/WebGLRenderer'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./renderers/WebGL1Renderer'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./renderers/shaders/ShaderLib'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./renderers/shaders/UniformsLib'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                ( T.StringLiteral
                    { text: "'./renderers/shaders/UniformsUtils'" }
                )
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./renderers/shaders/ShaderChunk'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                ( T.StringLiteral
                    { text: "'./renderers/webgl/WebGLBufferRenderer'" }
                )
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                ( T.StringLiteral
                    { text: "'./renderers/webgl/WebGLCapabilities'" }
                )
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./renderers/webgl/WebGLClipping'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                ( T.StringLiteral
                    { text: "'./renderers/webgl/WebGLCubeUVMaps'" }
                )
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                ( T.StringLiteral
                    { text: "'./renderers/webgl/WebGLExtensions'" }
                )
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                ( T.StringLiteral
                    { text: "'./renderers/webgl/WebGLGeometries'" }
                )
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                ( T.StringLiteral
                    { text: "'./renderers/webgl/WebGLIndexedBufferRenderer'" }
                )
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./renderers/webgl/WebGLInfo'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./renderers/webgl/WebGLLights'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./renderers/webgl/WebGLObjects'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./renderers/webgl/WebGLProgram'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./renderers/webgl/WebGLPrograms'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                ( T.StringLiteral
                    { text: "'./renderers/webgl/WebGLProperties'" }
                )
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                ( T.StringLiteral
                    { text: "'./renderers/webgl/WebGLRenderLists'" }
                )
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./renderers/webgl/WebGLShader'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./renderers/webgl/WebGLShadowMap'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./renderers/webgl/WebGLState'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./renderers/webgl/WebGLTextures'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./renderers/webgl/WebGLUniforms'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./renderers/webxr/WebXR'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                ( T.StringLiteral
                    { text: "'./renderers/webxr/WebXRController'" }
                )
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./renderers/webxr/WebXRManager'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./scenes/FogExp2'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./scenes/Fog'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./scenes/Scene'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./textures/VideoTexture'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./textures/DataTexture'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./textures/DataTexture2DArray'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./textures/DataTexture3D'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./textures/CompressedTexture'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./textures/CubeTexture'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./textures/CanvasTexture'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./textures/DepthTexture'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./textures/FramebufferTexture'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./textures/Texture'" })
            }
        ]
  , endOfFileToken: T.EndOfFileToken { text: "" }
  }