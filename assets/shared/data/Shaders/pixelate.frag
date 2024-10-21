#pragma header
uniform float Pixelly;
void main()
{
    vec2 uv = openfl_TextureCoordv*openfl_TextureSize/openfl_TextureSize.xy;
    uv = floor(uv*openfl_TextureSize.x*Pixelly)/(openfl_TextureSize.x*Pixelly);
    gl_FragColor = flixel_texture2D(bitmap, uv);
}