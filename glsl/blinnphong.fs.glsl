uniform vec3 lightColor;
uniform vec3 ambientColor;
uniform vec3 lightPosition;
uniform float kAmbient;
uniform float kDiffuse;
uniform float kSpecular;
uniform float shininess;

varying vec3 vLight;
varying vec3 vPosition;
varying vec3 vNormal;

void main() {

	// Normalize vectors
	vec3 l = normalize(vLight);
	vec3 v = normalize(-vPosition);
	vec3 n = normalize(vNormal);

  // Halfway vector
	vec3 h = normalize(l + v);

	// Ambient
	vec3 ambientLight = kAmbient * ambientColor;

	// Diffuse
	float diffuse = max(0.0, dot(l,n));
	vec3 diffuseLight = kDiffuse * lightColor * diffuse;

	// Specular
	float specular = pow(max(0.0, dot(h,n)), shininess);
	vec3 specularLight = kSpecular * lightColor * specular;

	// Total Light
	vec3 totalLight = ambientLight + diffuseLight; + specularLight;
	gl_FragColor = vec4(totalLight, 0.0);

}
