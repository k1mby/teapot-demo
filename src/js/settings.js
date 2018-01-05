/* Demo Settings */

// Shader Settings
const PHONG = 0;
const BLINNPHONG = 1;
const LAMBERTIAN = 2;
const ANISOTROPIC = 3;
const REFLECTION = 4;
const REFRACTION = 5;

// Shader Menu Options
var shaderMenu = {
  Phong : PHONG,
  BlinnPhong : BLINNPHONG,
  Lambertian : LAMBERTIAN,
  Anisotropic : ANISOTROPIC,
  Reflection : REFLECTION,
  Refraction : REFRACTION
}

// Default Uniform Values
var defaults = {
    lightColor : 0xFFFFFF,
    ambientColor : 0x555555,
    diffuseColor : 0xFFFFFF,
    specularColor : 0xFFFFFF,
    shininess : 10.0,
    kA : 0.6,
    kD : 0.8,
    kS : 0.8,
    alphaX : 0.5,
    alphaY : 0.05,
    x : -5,
    y : 4,
    z : 2
};

// Object Settings
var settings = {
  rotate : false,
  shader : PHONG
};

// Light Settings
var lightPosition = { type: 'v3', value: new THREE.Vector3( defaults.x, defaults.y, defaults.z ) }

var color = {
  light : defaults.lightColor,
  ambient : defaults.ambientColor,
  diffuse : defaults.diffuseColor,
  specular : defaults.specularColor
}

// Cubemap Settings
var cubemap = new THREE.CubeTextureLoader()
  .setPath( 'img/iceflats/' )
  .load([
    'iceflats_ft.png', 'iceflats_bk.png',
    'iceflats_up.png', 'iceflats_dn.png',
    'iceflats_rt.png', 'iceflats_lf.png'
  ]);
