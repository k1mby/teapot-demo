uniform samplerCube skybox;
varying vec3 vNormal;
varying vec3 vPosition;

void main() {

	// Normaliz vectors
	vec3 n = normalize(vNormal);
	vec3 v = normalize(cameraPosition - vPosition);

	// Refracted vector
	float index = 1.0;
	vec3 r;

	float angle = 1.0 - pow(index, 2.0) * (1.0 - pow(dot(n, v), 2.0));

	if (angle < 0.0)
			 r = vec3(0.0, 0.0, 0.0);
	 else
			 r = index * v - (index * dot(n, v) + sqrt(angle)) * n;

	vec4 color = textureCube(skybox, r);

	gl_FragColor = color;
}
