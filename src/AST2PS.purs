module AST2PS where

import Prelude

import AST.Animation.AnimationAction as AnimationAction
import AST.Animation.AnimationClip as AnimationClip
import AST.Animation.AnimationMixer as AnimationMixer
import AST.Animation.AnimationObjectGroup as AnimationObjectGroup
import AST.Animation.AnimationUtils as AnimationUtils
import AST.Animation.KeyframeTrack as KeyframeTrack
import AST.Animation.PropertyBinding as PropertyBinding
import AST.Animation.PropertyMixer as PropertyMixer
import AST.Animation.Tracks.BooleanKeyframeTrack as BooleanKeyframeTrack
import AST.Animation.Tracks.ColorKeyframeTrack as ColorKeyframeTrack
import AST.Animation.Tracks.NumberKeyframeTrack as NumberKeyframeTrack
import AST.Animation.Tracks.QuaternionKeyframeTrack as QuaternionKeyframeTrack
import AST.Animation.Tracks.StringKeyframeTrack as StringKeyframeTrack
import AST.Animation.Tracks.VectorKeyframeTrack as VectorKeyframeTrack
import AST.Audio.Audio as Audio
import AST.Audio.AudioAnalyser as AudioAnalyser
import AST.Audio.AudioContext as AudioContext
import AST.Audio.AudioListener as AudioListener
import AST.Audio.PositionalAudio as PositionalAudio
import AST.Cameras.ArrayCamera as ArrayCamera
import AST.Cameras.Camera as Camera
import AST.Cameras.CubeCamera as CubeCamera
import AST.Cameras.OrthographicCamera as OrthographicCamera
import AST.Cameras.PerspectiveCamera as PerspectiveCamera
import AST.Cameras.StereoCamera as StereoCamera
import AST.Constants as Constants
import AST.Core.BufferAttribute as BufferAttribute
import AST.Core.BufferGeometry as BufferGeometry
import AST.Core.Clock as Clock
import AST.Core.EventDispatcher as EventDispatcher
import AST.Core.GLBufferAttribute as GLBufferAttribute
import AST.Core.InstancedBufferAttribute as InstancedBufferAttribute
import AST.Core.InstancedBufferGeometry as InstancedBufferGeometry
import AST.Core.InstancedInterleavedBuffer as InstancedInterleavedBuffer
import AST.Core.InterleavedBuffer as InterleavedBuffer
import AST.Core.InterleavedBufferAttribute as InterleavedBufferAttribute
import AST.Core.Layers as Layers
import AST.Core.Object3D as Object3D
import AST.Core.Raycaster as Raycaster
import AST.Core.Uniform as Uniform
import AST.Extras.Core.Curve as Curve
import AST.Extras.Core.CurvePath as CurvePath
import AST.Extras.Core.Path as Path
import AST.Extras.Core.Shape as Shape
import AST.Extras.Core.ShapePath as ShapePath
import AST.Extras.Curves.ArcCurve as ArcCurve
import AST.Extras.Curves.CatmullRomCurve3 as CatmullRomCurve3
import AST.Extras.Curves.CubicBezierCurve as CubicBezierCurve
import AST.Extras.Curves.CubicBezierCurve3 as CubicBezierCurve3
import AST.Extras.Curves.Curves as Curves
import AST.Extras.Curves.EllipseCurve as EllipseCurve
import AST.Extras.Curves.LineCurve as LineCurve
import AST.Extras.Curves.LineCurve3 as LineCurve3
import AST.Extras.Curves.QuadraticBezierCurve as QuadraticBezierCurve
import AST.Extras.Curves.QuadraticBezierCurve3 as QuadraticBezierCurve3
import AST.Extras.Curves.SplineCurve as SplineCurve
import AST.Extras.DataUtils as DataUtils
import AST.Extras.ImageUtils as ImageUtils
import AST.Extras.PMREMGenerator as PMREMGenerator
import AST.Extras.ShapeUtils as ShapeUtils
import AST.Geometries.BoxGeometry as BoxGeometry
import AST.Geometries.CircleGeometry as CircleGeometry
import AST.Geometries.ConeGeometry as ConeGeometry
import AST.Geometries.CylinderGeometry as CylinderGeometry
import AST.Geometries.DodecahedronGeometry as DodecahedronGeometry
import AST.Geometries.EdgesGeometry as EdgesGeometry
import AST.Geometries.ExtrudeGeometry as ExtrudeGeometry
import AST.Geometries.Geometries as Geometries
import AST.Geometries.IcosahedronGeometry as IcosahedronGeometry
import AST.Geometries.LatheGeometry as LatheGeometry
import AST.Geometries.OctahedronGeometry as OctahedronGeometry
import AST.Geometries.PlaneGeometry as PlaneGeometry
import AST.Geometries.PolyhedronGeometry as PolyhedronGeometry
import AST.Geometries.RingGeometry as RingGeometry
import AST.Geometries.ShapeGeometry as ShapeGeometry
import AST.Geometries.SphereGeometry as SphereGeometry
import AST.Geometries.TetrahedronGeometry as TetrahedronGeometry
import AST.Geometries.TorusGeometry as TorusGeometry
import AST.Geometries.TorusKnotGeometry as TorusKnotGeometry
import AST.Geometries.TubeGeometry as TubeGeometry
import AST.Geometries.WireframeGeometry as WireframeGeometry
import AST.Helpers.ArrowHelper as ArrowHelper
import AST.Helpers.AxesHelper as AxesHelper
import AST.Helpers.Box3Helper as Box3Helper
import AST.Helpers.BoxHelper as BoxHelper
import AST.Helpers.CameraHelper as CameraHelper
import AST.Helpers.DirectionalLightHelper as DirectionalLightHelper
import AST.Helpers.GridHelper as GridHelper
import AST.Helpers.HemisphereLightHelper as HemisphereLightHelper
import AST.Helpers.PlaneHelper as PlaneHelper
import AST.Helpers.PointLightHelper as PointLightHelper
import AST.Helpers.PolarGridHelper as PolarGridHelper
import AST.Helpers.SkeletonHelper as SkeletonHelper
import AST.Helpers.SpotLightHelper as SpotLightHelper
import AST.Lights.AmbientLight as AmbientLight
import AST.Lights.AmbientLightProbe as AmbientLightProbe
import AST.Lights.DirectionalLight as DirectionalLight
import AST.Lights.DirectionalLightShadow as DirectionalLightShadow
import AST.Lights.HemisphereLight as HemisphereLight
import AST.Lights.HemisphereLightProbe as HemisphereLightProbe
import AST.Lights.Light as Light
import AST.Lights.LightProbe as LightProbe
import AST.Lights.LightShadow as LightShadow
import AST.Lights.PointLight as PointLight
import AST.Lights.PointLightShadow as PointLightShadow
import AST.Lights.RectAreaLight as RectAreaLight
import AST.Lights.SpotLight as SpotLight
import AST.Lights.SpotLightShadow as SpotLightShadow
import AST.Loaders.AnimationLoader as AnimationLoader
import AST.Loaders.AudioLoader as AudioLoader
import AST.Loaders.BufferGeometryLoader as BufferGeometryLoader
import AST.Loaders.Cache as Cache
import AST.Loaders.CompressedTextureLoader as CompressedTextureLoader
import AST.Loaders.CubeTextureLoader as CubeTextureLoader
import AST.Loaders.DataTextureLoader as DataTextureLoader
import AST.Loaders.FileLoader as FileLoader
import AST.Loaders.ImageBitmapLoader as ImageBitmapLoader
import AST.Loaders.ImageLoader as ImageLoader
import AST.Loaders.Loader as Loader
import AST.Loaders.LoaderUtils as LoaderUtils
import AST.Loaders.LoadingManager as LoadingManager
import AST.Loaders.MaterialLoader as MaterialLoader
import AST.Loaders.ObjectLoader as ObjectLoader
import AST.Loaders.TextureLoader as TextureLoader
import AST.Materials.LineBasicMaterial as LineBasicMaterial
import AST.Materials.LineDashedMaterial as LineDashedMaterial
import AST.Materials.Material as Material
import AST.Materials.Materials as Materials
import AST.Materials.MeshBasicMaterial as MeshBasicMaterial
import AST.Materials.MeshDepthMaterial as MeshDepthMaterial
import AST.Materials.MeshDistanceMaterial as MeshDistanceMaterial
import AST.Materials.MeshLambertMaterial as MeshLambertMaterial
import AST.Materials.MeshMatcapMaterial as MeshMatcapMaterial
import AST.Materials.MeshNormalMaterial as MeshNormalMaterial
import AST.Materials.MeshPhongMaterial as MeshPhongMaterial
import AST.Materials.MeshPhysicalMaterial as MeshPhysicalMaterial
import AST.Materials.MeshStandardMaterial as MeshStandardMaterial
import AST.Materials.MeshToonMaterial as MeshToonMaterial
import AST.Materials.PointsMaterial as PointsMaterial
import AST.Materials.RawShaderMaterial as RawShaderMaterial
import AST.Materials.ShaderMaterial as ShaderMaterial
import AST.Materials.ShadowMaterial as ShadowMaterial
import AST.Materials.SpriteMaterial as SpriteMaterial
import AST.Math.Box2 as Box2
import AST.Math.Box3 as Box3
import AST.Math.Color as Color
import AST.Math.Cylindrical as Cylindrical
import AST.Math.Euler as Euler
import AST.Math.Frustum as Frustum
import AST.Math.Interpolant as Interpolant
import AST.Math.Interpolants.CubicInterpolant as CubicInterpolant
import AST.Math.Interpolants.DiscreteInterpolant as DiscreteInterpolant
import AST.Math.Interpolants.LinearInterpolant as LinearInterpolant
import AST.Math.Interpolants.QuaternionLinearInterpolant as QuaternionLinearInterpolant
import AST.Math.Line3 as Line3
import AST.Math.MathUtils as MathUtils
import AST.Math.Matrix3 as Matrix3
import AST.Math.Matrix4 as Matrix4
import AST.Math.Plane as Plane
import AST.Math.Quaternion as Quaternion
import AST.Math.Ray as Ray
import AST.Math.Sphere as Sphere
import AST.Math.Spherical as Spherical
import AST.Math.SphericalHarmonics3 as SphericalHarmonics3
import AST.Math.Triangle as Triangle
import AST.Math.Vector2 as Vector2
import AST.Math.Vector3 as Vector3
import AST.Math.Vector4 as Vector4
import AST.Objects.Bone as Bone
import AST.Objects.Group as Group
import AST.Objects.InstancedMesh as InstancedMesh
import AST.Objects.LOD as LOD
import AST.Objects.Line as Line
import AST.Objects.LineLoop as LineLoop
import AST.Objects.LineSegments as LineSegments
import AST.Objects.Mesh as Mesh
import AST.Objects.Points as Points
import AST.Objects.Skeleton as Skeleton
import AST.Objects.SkinnedMesh as SkinnedMesh
import AST.Objects.Sprite as Sprite
import AST.Renderers.Shaders.ShaderChunk as ShaderChunk
import AST.Renderers.Shaders.ShaderLib as ShaderLib
import AST.Renderers.Shaders.UniformsLib as UniformsLib
import AST.Renderers.Shaders.UniformsUtils as UniformsUtils
import AST.Renderers.WebGL1Renderer as WebGL1Renderer
import AST.Renderers.WebGLCubeRenderTarget as WebGLCubeRenderTarget
import AST.Renderers.WebGLMultipleRenderTargets as WebGLMultipleRenderTargets
import AST.Renderers.WebGLMultisampleRenderTarget as WebGLMultisampleRenderTarget
import AST.Renderers.WebGLRenderTarget as WebGLRenderTarget
import AST.Renderers.WebGLRenderer as WebGLRenderer
import AST.Renderers.Webgl.WebGLAttributes as WebGLAttributes
import AST.Renderers.Webgl.WebGLBindingStates as WebGLBindingStates
import AST.Renderers.Webgl.WebGLBufferRenderer as WebGLBufferRenderer
import AST.Renderers.Webgl.WebGLCapabilities as WebGLCapabilities
import AST.Renderers.Webgl.WebGLClipping as WebGLClipping
import AST.Renderers.Webgl.WebGLCubeMaps as WebGLCubeMaps
import AST.Renderers.Webgl.WebGLCubeUVMaps as WebGLCubeUVMaps
import AST.Renderers.Webgl.WebGLExtensions as WebGLExtensions
import AST.Renderers.Webgl.WebGLGeometries as WebGLGeometries
import AST.Renderers.Webgl.WebGLIndexedBufferRenderer as WebGLIndexedBufferRenderer
import AST.Renderers.Webgl.WebGLInfo as WebGLInfo
import AST.Renderers.Webgl.WebGLLights as WebGLLights
import AST.Renderers.Webgl.WebGLObjects as WebGLObjects
import AST.Renderers.Webgl.WebGLProgram as WebGLProgram
import AST.Renderers.Webgl.WebGLPrograms as WebGLPrograms
import AST.Renderers.Webgl.WebGLProperties as WebGLProperties
import AST.Renderers.Webgl.WebGLRenderLists as WebGLRenderLists
import AST.Renderers.Webgl.WebGLShader as WebGLShader
import AST.Renderers.Webgl.WebGLShadowMap as WebGLShadowMap
import AST.Renderers.Webgl.WebGLState as WebGLState
import AST.Renderers.Webgl.WebGLTextures as WebGLTextures
import AST.Renderers.Webgl.WebGLUniforms as WebGLUniforms
import AST.Renderers.Webgl.WebGLUtils as WebGLUtils
import AST.Renderers.Webxr.WebXR as WebXR
import AST.Renderers.Webxr.WebXRController as WebXRController
import AST.Renderers.Webxr.WebXRManager as WebXRManager
import AST.Scenes.Fog as Fog
import AST.Scenes.FogExp2 as FogExp2
import AST.Scenes.Scene as Scene
import AST.Textures.CanvasTexture as CanvasTexture
import AST.Textures.CompressedTexture as CompressedTexture
import AST.Textures.CubeTexture as CubeTexture
import AST.Textures.DataTexture as DataTexture
import AST.Textures.DataTexture2DArray as DataTexture2DArray
import AST.Textures.DataTexture3D as DataTexture3D
import AST.Textures.DepthTexture as DepthTexture
import AST.Textures.FramebufferTexture as FramebufferTexture
import AST.Textures.Texture as Texture
import AST.Textures.VideoTexture as VideoTexture
import AST.Three as Three
import AST.Three.Legacy as Legacy
import AST.Utils as Utils
import Control.Monad.Except (Except)
import Control.Monad.Writer (Writer, WriterT(..), tell)
import Data.Array (drop, dropEnd, takeEnd)
import Data.List (List(..), intercalate, (:))
import Data.List as List
import Data.Map as Map
import Data.Newtype (unwrap)
import Data.String (Pattern(..), split, toLower)
import Data.String.Extra (camelCase)
import Data.Traversable (traverse)
import Data.Tuple.Nested ((/\))
import Data.Variant (match)
import Foreign (MultipleErrors)
import PureScript.CST.Types (Declaration, Import, ImportDecl(..))
import TSAST as T
import Tidy.Codegen (declImport, importValue, module_)

type Info = String

type Stack v = WriterT (Array Info) (Except MultipleErrors) v

tellJS = tell

asts :: Map.Map String T.SourceFile
asts = Map.fromFoldable
  [ "AST.Scenes.Fog" /\ Fog.ast
  , "AST.Scenes.Scene" /\ Scene.ast
  , "AST.Scenes.FogExp2" /\ FogExp2.ast
  , "AST.Loaders.MaterialLoader" /\ MaterialLoader.ast
  , "AST.Loaders.ImageBitmapLoader" /\ ImageBitmapLoader.ast
  , "AST.Loaders.Cache" /\ Cache.ast
  , "AST.Loaders.Loader" /\ Loader.ast
  , "AST.Loaders.ImageLoader" /\ ImageLoader.ast
  , "AST.Loaders.BufferGeometryLoader" /\ BufferGeometryLoader.ast
  , "AST.Loaders.TextureLoader" /\ TextureLoader.ast
  , "AST.Loaders.AudioLoader" /\ AudioLoader.ast
  , "AST.Loaders.CompressedTextureLoader" /\ CompressedTextureLoader.ast
  , "AST.Loaders.LoaderUtils" /\ LoaderUtils.ast
  , "AST.Loaders.CubeTextureLoader" /\ CubeTextureLoader.ast
  , "AST.Loaders.AnimationLoader" /\ AnimationLoader.ast
  , "AST.Loaders.DataTextureLoader" /\ DataTextureLoader.ast
  , "AST.Loaders.LoadingManager" /\ LoadingManager.ast
  , "AST.Loaders.ObjectLoader" /\ ObjectLoader.ast
  , "AST.Loaders.FileLoader" /\ FileLoader.ast
  , "AST.Objects.Mesh" /\ Mesh.ast
  , "AST.Objects.Sprite" /\ Sprite.ast
  , "AST.Objects.Group" /\ Group.ast
  , "AST.Objects.Line" /\ Line.ast
  , "AST.Objects.Skeleton" /\ Skeleton.ast
  , "AST.Objects.Points" /\ Points.ast
  , "AST.Objects.InstancedMesh" /\ InstancedMesh.ast
  , "AST.Objects.Bone" /\ Bone.ast
  , "AST.Objects.LineLoop" /\ LineLoop.ast
  , "AST.Objects.LOD" /\ LOD.ast
  , "AST.Objects.LineSegments" /\ LineSegments.ast
  , "AST.Objects.SkinnedMesh" /\ SkinnedMesh.ast
  , "AST.Extras.Core.ShapePath" /\ ShapePath.ast
  , "AST.Extras.Core.Curve" /\ Curve.ast
  , "AST.Extras.Core.CurvePath" /\ CurvePath.ast
  , "AST.Extras.Core.Shape" /\ Shape.ast
  , "AST.Extras.Core.Path" /\ Path.ast
  , "AST.Extras.Curves.CubicBezierCurve3" /\ CubicBezierCurve3.ast
  , "AST.Extras.Curves.EllipseCurve" /\ EllipseCurve.ast
  , "AST.Extras.Curves.LineCurve" /\ LineCurve.ast
  , "AST.Extras.Curves.QuadraticBezierCurve3" /\ QuadraticBezierCurve3.ast
  , "AST.Extras.Curves.QuadraticBezierCurve" /\ QuadraticBezierCurve.ast
  , "AST.Extras.Curves.Curves" /\ Curves.ast
  , "AST.Extras.Curves.CubicBezierCurve" /\ CubicBezierCurve.ast
  , "AST.Extras.Curves.ArcCurve" /\ ArcCurve.ast
  , "AST.Extras.Curves.CatmullRomCurve3" /\ CatmullRomCurve3.ast
  , "AST.Extras.Curves.LineCurve3" /\ LineCurve3.ast
  , "AST.Extras.Curves.SplineCurve" /\ SplineCurve.ast
  , "AST.Extras.PMREMGenerator" /\ PMREMGenerator.ast
  , "AST.Extras.DataUtils" /\ DataUtils.ast
  , "AST.Extras.ImageUtils" /\ ImageUtils.ast
  , "AST.Extras.ShapeUtils" /\ ShapeUtils.ast
  , "AST.Textures.DataTexture" /\ DataTexture.ast
  , "AST.Textures.Texture" /\ Texture.ast
  , "AST.Textures.CanvasTexture" /\ CanvasTexture.ast
  , "AST.Textures.CubeTexture" /\ CubeTexture.ast
  , "AST.Textures.CompressedTexture" /\ CompressedTexture.ast
  , "AST.Textures.FramebufferTexture" /\ FramebufferTexture.ast
  , "AST.Textures.DataTexture2DArray" /\ DataTexture2DArray.ast
  , "AST.Textures.VideoTexture" /\ VideoTexture.ast
  , "AST.Textures.DataTexture3D" /\ DataTexture3D.ast
  , "AST.Textures.DepthTexture" /\ DepthTexture.ast
  , "AST.Core.InstancedBufferGeometry" /\ InstancedBufferGeometry.ast
  , "AST.Core.EventDispatcher" /\ EventDispatcher.ast
  , "AST.Core.Uniform" /\ Uniform.ast
  , "AST.Core.Layers" /\ Layers.ast
  , "AST.Core.InterleavedBuffer" /\ InterleavedBuffer.ast
  , "AST.Core.Object3D" /\ Object3D.ast
  , "AST.Core.BufferAttribute" /\ BufferAttribute.ast
  , "AST.Core.Raycaster" /\ Raycaster.ast
  , "AST.Core.InstancedInterleavedBuffer" /\ InstancedInterleavedBuffer.ast
  , "AST.Core.Clock" /\ Clock.ast
  , "AST.Core.InstancedBufferAttribute" /\ InstancedBufferAttribute.ast
  , "AST.Core.BufferGeometry" /\ BufferGeometry.ast
  , "AST.Core.InterleavedBufferAttribute" /\ InterleavedBufferAttribute.ast
  , "AST.Core.GLBufferAttribute" /\ GLBufferAttribute.ast
  , "AST.Audio.Audio" /\ Audio.ast
  , "AST.Audio.AudioListener" /\ AudioListener.ast
  , "AST.Audio.AudioContext" /\ AudioContext.ast
  , "AST.Audio.PositionalAudio" /\ PositionalAudio.ast
  , "AST.Audio.AudioAnalyser" /\ AudioAnalyser.ast
  , "AST.Renderers.Shaders.ShaderChunk" /\ ShaderChunk.ast
  , "AST.Renderers.Shaders.UniformsUtils" /\ UniformsUtils.ast
  , "AST.Renderers.Shaders.ShaderLib" /\ ShaderLib.ast
  , "AST.Renderers.Shaders.UniformsLib" /\ UniformsLib.ast
  , "AST.Renderers.Webxr.WebXRController" /\ WebXRController.ast
  , "AST.Renderers.Webxr.WebXRManager" /\ WebXRManager.ast
  , "AST.Renderers.Webxr.WebXR" /\ WebXR.ast
  , "AST.Renderers.Webgl.WebGLCapabilities" /\ WebGLCapabilities.ast
  , "AST.Renderers.Webgl.WebGLBindingStates" /\ WebGLBindingStates.ast
  , "AST.Renderers.Webgl.WebGLProperties" /\ WebGLProperties.ast
  , "AST.Renderers.Webgl.WebGLInfo" /\ WebGLInfo.ast
  , "AST.Renderers.Webgl.WebGLPrograms" /\ WebGLPrograms.ast
  , "AST.Renderers.Webgl.WebGLShader" /\ WebGLShader.ast
  , "AST.Renderers.Webgl.WebGLBufferRenderer" /\ WebGLBufferRenderer.ast
  , "AST.Renderers.Webgl.WebGLObjects" /\ WebGLObjects.ast
  , "AST.Renderers.Webgl.WebGLRenderLists" /\ WebGLRenderLists.ast
  , "AST.Renderers.Webgl.WebGLAttributes" /\ WebGLAttributes.ast
  , "AST.Renderers.Webgl.WebGLLights" /\ WebGLLights.ast
  , "AST.Renderers.Webgl.WebGLProgram" /\ WebGLProgram.ast
  , "AST.Renderers.Webgl.WebGLCubeUVMaps" /\ WebGLCubeUVMaps.ast
  , "AST.Renderers.Webgl.WebGLUniforms" /\ WebGLUniforms.ast
  , "AST.Renderers.Webgl.WebGLCubeMaps" /\ WebGLCubeMaps.ast
  , "AST.Renderers.Webgl.WebGLTextures" /\ WebGLTextures.ast
  , "AST.Renderers.Webgl.WebGLExtensions" /\ WebGLExtensions.ast
  , "AST.Renderers.Webgl.WebGLShadowMap" /\ WebGLShadowMap.ast
  , "AST.Renderers.Webgl.WebGLIndexedBufferRenderer" /\
      WebGLIndexedBufferRenderer.ast
  , "AST.Renderers.Webgl.WebGLGeometries" /\ WebGLGeometries.ast
  , "AST.Renderers.Webgl.WebGLState" /\ WebGLState.ast
  , "AST.Renderers.Webgl.WebGLUtils" /\ WebGLUtils.ast
  , "AST.Renderers.Webgl.WebGLClipping" /\ WebGLClipping.ast
  , "AST.Renderers.WebGLMultipleRenderTargets" /\ WebGLMultipleRenderTargets.ast
  , "AST.Renderers.WebGLCubeRenderTarget" /\ WebGLCubeRenderTarget.ast
  , "AST.Renderers.WebGLRenderTarget" /\ WebGLRenderTarget.ast
  , "AST.Renderers.WebGLMultisampleRenderTarget" /\
      WebGLMultisampleRenderTarget.ast
  , "AST.Renderers.WebGLRenderer" /\ WebGLRenderer.ast
  , "AST.Renderers.WebGL1Renderer" /\ WebGL1Renderer.ast
  , "AST.Materials.MeshLambertMaterial" /\ MeshLambertMaterial.ast
  , "AST.Materials.RawShaderMaterial" /\ RawShaderMaterial.ast
  , "AST.Materials.PointsMaterial" /\ PointsMaterial.ast
  , "AST.Materials.ShadowMaterial" /\ ShadowMaterial.ast
  , "AST.Materials.LineDashedMaterial" /\ LineDashedMaterial.ast
  , "AST.Materials.MeshBasicMaterial" /\ MeshBasicMaterial.ast
  , "AST.Materials.Material" /\ Material.ast
  , "AST.Materials.MeshDepthMaterial" /\ MeshDepthMaterial.ast
  , "AST.Materials.LineBasicMaterial" /\ LineBasicMaterial.ast
  , "AST.Materials.Materials" /\ Materials.ast
  , "AST.Materials.MeshDistanceMaterial" /\ MeshDistanceMaterial.ast
  , "AST.Materials.SpriteMaterial" /\ SpriteMaterial.ast
  , "AST.Materials.MeshStandardMaterial" /\ MeshStandardMaterial.ast
  , "AST.Materials.ShaderMaterial" /\ ShaderMaterial.ast
  , "AST.Materials.MeshToonMaterial" /\ MeshToonMaterial.ast
  , "AST.Materials.MeshPhongMaterial" /\ MeshPhongMaterial.ast
  , "AST.Materials.MeshPhysicalMaterial" /\ MeshPhysicalMaterial.ast
  , "AST.Materials.MeshNormalMaterial" /\ MeshNormalMaterial.ast
  , "AST.Materials.MeshMatcapMaterial" /\ MeshMatcapMaterial.ast
  , "AST.Geometries.OctahedronGeometry" /\ OctahedronGeometry.ast
  , "AST.Geometries.TubeGeometry" /\ TubeGeometry.ast
  , "AST.Geometries.SphereGeometry" /\ SphereGeometry.ast
  , "AST.Geometries.LatheGeometry" /\ LatheGeometry.ast
  , "AST.Geometries.BoxGeometry" /\ BoxGeometry.ast
  , "AST.Geometries.IcosahedronGeometry" /\ IcosahedronGeometry.ast
  , "AST.Geometries.PlaneGeometry" /\ PlaneGeometry.ast
  , "AST.Geometries.WireframeGeometry" /\ WireframeGeometry.ast
  , "AST.Geometries.Geometries" /\ Geometries.ast
  , "AST.Geometries.TorusKnotGeometry" /\ TorusKnotGeometry.ast
  , "AST.Geometries.PolyhedronGeometry" /\ PolyhedronGeometry.ast
  , "AST.Geometries.ConeGeometry" /\ ConeGeometry.ast
  , "AST.Geometries.RingGeometry" /\ RingGeometry.ast
  , "AST.Geometries.CircleGeometry" /\ CircleGeometry.ast
  , "AST.Geometries.TorusGeometry" /\ TorusGeometry.ast
  , "AST.Geometries.EdgesGeometry" /\ EdgesGeometry.ast
  , "AST.Geometries.CylinderGeometry" /\ CylinderGeometry.ast
  , "AST.Geometries.ShapeGeometry" /\ ShapeGeometry.ast
  , "AST.Geometries.ExtrudeGeometry" /\ ExtrudeGeometry.ast
  , "AST.Geometries.TetrahedronGeometry" /\ TetrahedronGeometry.ast
  , "AST.Geometries.DodecahedronGeometry" /\ DodecahedronGeometry.ast
  , "AST.Animation.Tracks.StringKeyframeTrack" /\ StringKeyframeTrack.ast
  , "AST.Animation.Tracks.NumberKeyframeTrack" /\ NumberKeyframeTrack.ast
  , "AST.Animation.Tracks.QuaternionKeyframeTrack" /\
      QuaternionKeyframeTrack.ast
  , "AST.Animation.Tracks.VectorKeyframeTrack" /\ VectorKeyframeTrack.ast
  , "AST.Animation.Tracks.ColorKeyframeTrack" /\ ColorKeyframeTrack.ast
  , "AST.Animation.Tracks.BooleanKeyframeTrack" /\ BooleanKeyframeTrack.ast
  , "AST.Animation.AnimationUtils" /\ AnimationUtils.ast
  , "AST.Animation.AnimationMixer" /\ AnimationMixer.ast
  , "AST.Animation.PropertyMixer" /\ PropertyMixer.ast
  , "AST.Animation.PropertyBinding" /\ PropertyBinding.ast
  , "AST.Animation.AnimationAction" /\ AnimationAction.ast
  , "AST.Animation.AnimationClip" /\ AnimationClip.ast
  , "AST.Animation.AnimationObjectGroup" /\ AnimationObjectGroup.ast
  , "AST.Animation.KeyframeTrack" /\ KeyframeTrack.ast
  , "AST.Cameras.Camera" /\ Camera.ast
  , "AST.Cameras.OrthographicCamera" /\ OrthographicCamera.ast
  , "AST.Cameras.StereoCamera" /\ StereoCamera.ast
  , "AST.Cameras.ArrayCamera" /\ ArrayCamera.ast
  , "AST.Cameras.PerspectiveCamera" /\ PerspectiveCamera.ast
  , "AST.Cameras.CubeCamera" /\ CubeCamera.ast
  , "AST.Lights.PointLight" /\ PointLight.ast
  , "AST.Lights.HemisphereLight" /\ HemisphereLight.ast
  , "AST.Lights.DirectionalLight" /\ DirectionalLight.ast
  , "AST.Lights.RectAreaLight" /\ RectAreaLight.ast
  , "AST.Lights.Light" /\ Light.ast
  , "AST.Lights.LightShadow" /\ LightShadow.ast
  , "AST.Lights.DirectionalLightShadow" /\ DirectionalLightShadow.ast
  , "AST.Lights.HemisphereLightProbe" /\ HemisphereLightProbe.ast
  , "AST.Lights.LightProbe" /\ LightProbe.ast
  , "AST.Lights.PointLightShadow" /\ PointLightShadow.ast
  , "AST.Lights.SpotLightShadow" /\ SpotLightShadow.ast
  , "AST.Lights.AmbientLightProbe" /\ AmbientLightProbe.ast
  , "AST.Lights.AmbientLight" /\ AmbientLight.ast
  , "AST.Lights.SpotLight" /\ SpotLight.ast
  , "AST.Math.Interpolants.CubicInterpolant" /\ CubicInterpolant.ast
  , "AST.Math.Interpolants.LinearInterpolant" /\ LinearInterpolant.ast
  , "AST.Math.Interpolants.DiscreteInterpolant" /\ DiscreteInterpolant.ast
  , "AST.Math.Interpolants.QuaternionLinearInterpolant" /\
      QuaternionLinearInterpolant.ast
  , "AST.Math.Euler" /\ Euler.ast
  , "AST.Math.Spherical" /\ Spherical.ast
  , "AST.Math.Box3" /\ Box3.ast
  , "AST.Math.Triangle" /\ Triangle.ast
  , "AST.Math.Matrix4" /\ Matrix4.ast
  , "AST.Math.MathUtils" /\ MathUtils.ast
  , "AST.Math.Vector2" /\ Vector2.ast
  , "AST.Math.Frustum" /\ Frustum.ast
  , "AST.Math.Box2" /\ Box2.ast
  , "AST.Math.Quaternion" /\ Quaternion.ast
  , "AST.Math.Vector4" /\ Vector4.ast
  , "AST.Math.Cylindrical" /\ Cylindrical.ast
  , "AST.Math.Interpolant" /\ Interpolant.ast
  , "AST.Math.Vector3" /\ Vector3.ast
  , "AST.Math.Ray" /\ Ray.ast
  , "AST.Math.Line3" /\ Line3.ast
  , "AST.Math.SphericalHarmonics3" /\ SphericalHarmonics3.ast
  , "AST.Math.Color" /\ Color.ast
  , "AST.Math.Matrix3" /\ Matrix3.ast
  , "AST.Math.Plane" /\ Plane.ast
  , "AST.Math.Sphere" /\ Sphere.ast
  , "AST.Helpers.HemisphereLightHelper" /\ HemisphereLightHelper.ast
  , "AST.Helpers.PointLightHelper" /\ PointLightHelper.ast
  , "AST.Helpers.SkeletonHelper" /\ SkeletonHelper.ast
  , "AST.Helpers.AxesHelper" /\ AxesHelper.ast
  , "AST.Helpers.CameraHelper" /\ CameraHelper.ast
  , "AST.Helpers.SpotLightHelper" /\ SpotLightHelper.ast
  , "AST.Helpers.BoxHelper" /\ BoxHelper.ast
  , "AST.Helpers.PolarGridHelper" /\ PolarGridHelper.ast
  , "AST.Helpers.PlaneHelper" /\ PlaneHelper.ast
  , "AST.Helpers.DirectionalLightHelper" /\ DirectionalLightHelper.ast
  , "AST.Helpers.Box3Helper" /\ Box3Helper.ast
  , "AST.Helpers.ArrowHelper" /\ ArrowHelper.ast
  , "AST.Helpers.GridHelper" /\ GridHelper.ast
  , "AST.Three.Legacy" /\ Legacy.ast
  , "AST.Constants" /\ Constants.ast
  , "AST.Utils" /\ Utils.ast
  , "AST.Three" /\ Three.ast
  ]

parseSourceFile :: forall e. String -> T.SourceFile -> Stack (Declaration e)
parseSourceFile name (T.SourceFile v) = module_ name []
  <$> traverse (parseImportDeclaration name) v.importDeclaration
  <*>
    ( (<>) <$> traverse parseInterfaceDeclaration v.interfaceDeclaration <*> match
        { classDeclaration: traverse (parseClassDeclaration name)
        , moduleDeclaration: traverse (parseModuleDeclaration name)
        , firstStatement: traverse (parseFirstStatement name)
        , exportDeclaration: traverse (parseExportDeclaration name)
        , typeAliasDeclaration: traverse (parseTypeAliasDeclaration name)
        , functionDeclaration: traverse (parseFunctionDeclaration name)
        , enumDeclaration: traverse (parseEnumDeclaration name)
        }
        v.classDeclaration_or_moduleDeclaration_or_firstStatement_or_exportDeclaration_or_typeAliasDeclaration_or_functionDeclaration_or_enumDeclaration
    )

parseImportDeclaration
  :: forall e. String -> T.ImportDeclaration -> Stack (ImportDecl e)
parseImportDeclaration name (T.ImportDeclaration v) = parseImportClause path
  name
  v.importClause
  where
  path = unwrap (v.stringLiteral).text

pathToPSPath :: String -> String -> String
pathToPSPath = go <<< splitPath
  where
  splitPath = List.fromFoldable <<< split (Pattern "/")
  go Nil o = o
  go (a : b) o
    | a == ".." = go b (intercalate "." (dropEnd 1 (split (Pattern ".") o)))
    | otherwise = go b (o <> "." <> a)

pathToJSPath :: String -> String -> String
pathToJSPath path name = "three/src/" <> if withThreeAndVersionDropped == "Three.Legacy" then "Three.Legacy.js" else if withThreeAndVersionDropped == "Utils" then "utils.js" else jsify withThreeAndVersionDropped
  where
  psp = pathToPSPath path name
  withThreeAndVersionDropped = intercalate "." (drop 2 (split (Pattern ".") psp))
  jsify x = let sp = split (Pattern ".") x in intercalate "/" (map toLower (dropEnd 1 sp) <> takeEnd 1 sp)

nameToCamelCaseName :: String -> String
nameToCamelCaseName = camelCase

parseImportClause
  :: forall e. String -> String -> T.ImportClause -> Stack (ImportDecl e)
parseImportClause path name (T.ImportClause v) = match
  { namedImports: parseNamedImports path name
  , namespaceImport: parseNamespaceImport path name
  }
  v.namedImports_or_namespaceImport

parseNamedImports
  :: forall e. String -> String -> T.NamedImports -> Stack (ImportDecl e)
parseNamedImports path name (T.NamedImports v) = do
  tellJS "var " <> camelCaseName <> " = require('" <> pathToJSPath path name <>
    "');"
  declImport (pathToPSPath path name) <$> traverse
    (parseImportSpecifier camelCaseName path name)
    v.importSpecifier
  where
  camelCaseName = nameToCamelCaseName name

parseImportSpecifier
  :: forall e
   . String
  -> String
  -> String
  -> T.ImportSpecifier
  -> Stack (Import e)
parseImportSpecifier camelCaseName path name (T.ImportSpecifier v) = do
  tellJS "var " <> identifier <> " = " <> camelCaseName <> "." <> identifier <>
    ";"
  pure $ importValue identifier
  where
  identifier = (unwrap v.identifier).text

-- we always get identifiers one or more levels up, so this is unnecessary
-- parseIdentifier :: forall e. String -> T.Identifier -> Stack (Declaration e)
-- parseIdentifier name (T.Identifier v) = ?hole

-- we always get string literals one or more levels up, so this is unnecessary
-- parseStringLiteral
--  :: forall e. String -> T.StringLiteral -> Stack (Declaration e)
-- parseStringLiteral name (T.StringLiteral v) = ?hole

parseInterfaceDeclaration
  :: forall e. String -> T.InterfaceDeclaration -> Stack (Declaration e)
parseInterfaceDeclaration name (T.InterfaceDeclaration v) = ?hole

parseExportKeyword
  :: forall e. String -> T.ExportKeyword -> Stack (Declaration e)
parseExportKeyword name (T.ExportKeyword v) = ?hole

parsePropertySignature
  :: forall e. String -> T.PropertySignature -> Stack (Declaration e)
parsePropertySignature name (T.PropertySignature v) = ?hole

parseStringKeyword
  :: forall e. String -> T.StringKeyword -> Stack (Declaration e)
parseStringKeyword name (T.StringKeyword v) = ?hole

parseTypeReference
  :: forall e. String -> T.TypeReference -> Stack (Declaration e)
parseTypeReference name (T.TypeReference v) = ?hole

parseMethodSignature
  :: forall e. String -> T.MethodSignature -> Stack (Declaration e)
parseMethodSignature name (T.MethodSignature v) = ?hole

parseAnyKeyword :: forall e. String -> T.AnyKeyword -> Stack (Declaration e)
parseAnyKeyword name (T.AnyKeyword v) = ?hole

parseClassDeclaration
  :: forall e. String -> T.ClassDeclaration -> Stack (Declaration e)
parseClassDeclaration name (T.ClassDeclaration v) = ?hole

parseHeritageClause
  :: forall e. String -> T.HeritageClause -> Stack (Declaration e)
parseHeritageClause name (T.HeritageClause v) = ?hole

parseExpressionWithTypeArguments
  :: forall e. String -> T.ExpressionWithTypeArguments -> Stack (Declaration e)
parseExpressionWithTypeArguments name (T.ExpressionWithTypeArguments v) = ?hole

parseConstructor :: forall e. String -> T.Constructor -> Stack (Declaration e)
parseConstructor name (T.Constructor v) = ?hole

parseParameter :: forall e. String -> T.Parameter -> Stack (Declaration e)
parseParameter name (T.Parameter v) = ?hole

parseQuestionToken
  :: forall e. String -> T.QuestionToken -> Stack (Declaration e)
parseQuestionToken name (T.QuestionToken v) = ?hole

parseNumberKeyword
  :: forall e. String -> T.NumberKeyword -> Stack (Declaration e)
parseNumberKeyword name (T.NumberKeyword v) = ?hole

parsePropertyDeclaration
  :: forall e. String -> T.PropertyDeclaration -> Stack (Declaration e)
parsePropertyDeclaration name (T.PropertyDeclaration v) = ?hole

parseReadonlyKeyword
  :: forall e. String -> T.ReadonlyKeyword -> Stack (Declaration e)
parseReadonlyKeyword name (T.ReadonlyKeyword v) = ?hole

parseLiteralType :: forall e. String -> T.LiteralType -> Stack (Declaration e)
parseLiteralType name (T.LiteralType v) = ?hole

parseTrueKeyword :: forall e. String -> T.TrueKeyword -> Stack (Declaration e)
parseTrueKeyword name (T.TrueKeyword v) = ?hole

parseMethodDeclaration
  :: forall e. String -> T.MethodDeclaration -> Stack (Declaration e)
parseMethodDeclaration name (T.MethodDeclaration v) = ?hole

parseEndOfFileToken
  :: forall e. String -> T.EndOfFileToken -> Stack (Declaration e)
parseEndOfFileToken name (T.EndOfFileToken v) = ?hole

parseUnionType :: forall e. String -> T.UnionType -> Stack (Declaration e)
parseUnionType name (T.UnionType v) = ?hole

parseNullKeyword :: forall e. String -> T.NullKeyword -> Stack (Declaration e)
parseNullKeyword name (T.NullKeyword v) = ?hole

parseBooleanKeyword
  :: forall e. String -> T.BooleanKeyword -> Stack (Declaration e)
parseBooleanKeyword name (T.BooleanKeyword v) = ?hole

parseFunctionType :: forall e. String -> T.FunctionType -> Stack (Declaration e)
parseFunctionType name (T.FunctionType v) = ?hole

parseVoidKeyword :: forall e. String -> T.VoidKeyword -> Stack (Declaration e)
parseVoidKeyword name (T.VoidKeyword v) = ?hole

parseTypeLiteral :: forall e. String -> T.TypeLiteral -> Stack (Declaration e)
parseTypeLiteral name (T.TypeLiteral v) = ?hole

parseIndexSignature
  :: forall e. String -> T.IndexSignature -> Stack (Declaration e)
parseIndexSignature name (T.IndexSignature v) = ?hole

parseThisType :: forall e. String -> T.ThisType -> Stack (Declaration e)
parseThisType name (T.ThisType v) = ?hole

parseUndefinedKeyword
  :: forall e. String -> T.UndefinedKeyword -> Stack (Declaration e)
parseUndefinedKeyword name (T.UndefinedKeyword v) = ?hole

parseObjectKeyword
  :: forall e. String -> T.ObjectKeyword -> Stack (Declaration e)
parseObjectKeyword name (T.ObjectKeyword v) = ?hole

parseModuleDeclaration
  :: forall e. String -> T.ModuleDeclaration -> Stack (Declaration e)
parseModuleDeclaration name (T.ModuleDeclaration v) = ?hole

parseModuleBlock :: forall e. String -> T.ModuleBlock -> Stack (Declaration e)
parseModuleBlock name (T.ModuleBlock v) = ?hole

parseFirstStatement
  :: forall e. String -> T.FirstStatement -> Stack (Declaration e)
parseFirstStatement name (T.FirstStatement v) = ?hole

parseVariableDeclarationList
  :: forall e. String -> T.VariableDeclarationList -> Stack (Declaration e)
parseVariableDeclarationList name (T.VariableDeclarationList v) = ?hole

parseVariableDeclaration
  :: forall e. String -> T.VariableDeclaration -> Stack (Declaration e)
parseVariableDeclaration name (T.VariableDeclaration v) = ?hole

parseFunctionDeclaration
  :: forall e. String -> T.FunctionDeclaration -> Stack (Declaration e)
parseFunctionDeclaration name (T.FunctionDeclaration v) = ?hole

parseArrayType :: forall e. String -> T.ArrayType -> Stack (Declaration e)
parseArrayType name (T.ArrayType v) = ?hole

parseParenthesizedType
  :: forall e. String -> T.ParenthesizedType -> Stack (Declaration e)
parseParenthesizedType name (T.ParenthesizedType v) = ?hole

parseTypeParameter
  :: forall e. String -> T.TypeParameter -> Stack (Declaration e)
parseTypeParameter name (T.TypeParameter v) = ?hole

parseStaticKeyword
  :: forall e. String -> T.StaticKeyword -> Stack (Declaration e)
parseStaticKeyword name (T.StaticKeyword v) = ?hole

parseExportDeclaration
  :: forall e. String -> T.ExportDeclaration -> Stack (Declaration e)
parseExportDeclaration name (T.ExportDeclaration v) = ?hole

parseTypeAliasDeclaration
  :: forall e. String -> T.TypeAliasDeclaration -> Stack (Declaration e)
parseTypeAliasDeclaration name (T.TypeAliasDeclaration v) = ?hole

parseIntersectionType
  :: forall e. String -> T.IntersectionType -> Stack (Declaration e)
parseIntersectionType name (T.IntersectionType v) = ?hole

parseIndexedAccessType
  :: forall e. String -> T.IndexedAccessType -> Stack (Declaration e)
parseIndexedAccessType name (T.IndexedAccessType v) = ?hole

parseDotDotDotToken
  :: forall e. String -> T.DotDotDotToken -> Stack (Declaration e)
parseDotDotDotToken name (T.DotDotDotToken v) = ?hole

parseSetAccessor :: forall e. String -> T.SetAccessor -> Stack (Declaration e)
parseSetAccessor name (T.SetAccessor v) = ?hole

parseGetAccessor :: forall e. String -> T.GetAccessor -> Stack (Declaration e)
parseGetAccessor name (T.GetAccessor v) = ?hole

parseFirstLiteralToken
  :: forall e. String -> T.FirstLiteralToken -> Stack (Declaration e)
parseFirstLiteralToken name (T.FirstLiteralToken v) = ?hole

parseNamedExports :: forall e. String -> T.NamedExports -> Stack (Declaration e)
parseNamedExports name (T.NamedExports v) = ?hole

parseExportSpecifier
  :: forall e. String -> T.ExportSpecifier -> Stack (Declaration e)
parseExportSpecifier name (T.ExportSpecifier v) = ?hole

parseEnumDeclaration
  :: forall e. String -> T.EnumDeclaration -> Stack (Declaration e)
parseEnumDeclaration name (T.EnumDeclaration v) = ?hole

parseEnumMember :: forall e. String -> T.EnumMember -> Stack (Declaration e)
parseEnumMember name (T.EnumMember v) = ?hole

parseConstructSignature
  :: forall e. String -> T.ConstructSignature -> Stack (Declaration e)
parseConstructSignature name (T.ConstructSignature v) = ?hole

parseConditionalType
  :: forall e. String -> T.ConditionalType -> Stack (Declaration e)
parseConditionalType name (T.ConditionalType v) = ?hole

parseFirstNode :: forall e. String -> T.FirstNode -> Stack (Declaration e)
parseFirstNode name (T.FirstNode v) = ?hole

parseTupleType :: forall e. String -> T.TupleType -> Stack (Declaration e)
parseTupleType name (T.TupleType v) = ?hole

parseFirstContextualKeyword
  :: forall e. String -> T.FirstContextualKeyword -> Stack (Declaration e)
parseFirstContextualKeyword name (T.FirstContextualKeyword v) = ?hole

parseNamespaceImport
  :: forall e. String -> T.NamespaceImport -> Stack (Declaration e)
parseNamespaceImport name (T.NamespaceImport v) = ?hole

