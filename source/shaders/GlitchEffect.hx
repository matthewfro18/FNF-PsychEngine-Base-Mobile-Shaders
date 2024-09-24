package shaders;

class GlitchEffect
{
	public var shader(default, null):GlitchShader = new GlitchShader();

	#if (SHADERS_ENABLED || mac)
	public var waveSpeed(default, set):Float = 0;
	public var waveFrequency(default, set):Float = 0;
	public var waveAmplitude(default, set):Float = 0;
	public var Enabled(default, set):Bool = true;

	public function new():Void
	{
		shader.uTime.value = [0];
	}

	public function update(elapsed:Float):Void
	{
		shader.uTime.value[0] += elapsed;
	}

	function set_waveSpeed(v:Float):Float
	{
		waveSpeed = v;
		shader.uSpeed.value = [waveSpeed];
		return v;
	}

	function set_Enabled(v:Bool):Bool
	{
		Enabled = v;
		shader.uEnabled.value = [Enabled];
		return v;
	}

	function set_waveFrequency(v:Float):Float
	{
		waveFrequency = v;
		shader.uFrequency.value = [waveFrequency];
		return v;
	}

	function set_waveAmplitude(v:Float):Float
	{
		waveAmplitude = v;
		shader.uWaveAmplitude.value = [waveAmplitude];
		return v;
	}
	#end
}

class DistortBGEffect
{
	public var shader(default, null):DistortBGShader = new DistortBGShader();

	#if SHADERS_ENABLED
	public var waveSpeed(default, set):Float = 0;
	public var waveFrequency(default, set):Float = 0;
	public var waveAmplitude(default, set):Float = 0;

	public function new():Void
	{
		shader.uTime.value = [0];
	}

	public function update(elapsed:Float):Void
	{
		shader.uTime.value[0] += elapsed;
	}

	function set_waveSpeed(v:Float):Float
	{
		waveSpeed = v;
		shader.uSpeed.value = [waveSpeed];
		return v;
	}

	function set_waveFrequency(v:Float):Float
	{
		waveFrequency = v;
		shader.uFrequency.value = [waveFrequency];
		return v;
	}

	function set_waveAmplitude(v:Float):Float
	{
		waveAmplitude = v;
		shader.uWaveAmplitude.value = [waveAmplitude];
		return v;
	}
	#end
}

class PulseEffect
{
	public var shader(default, null):PulseShader = new PulseShader();

	#if SHADERS_ENABLED
	public var waveSpeed(default, set):Float = 0;
	public var waveFrequency(default, set):Float = 0;
	public var waveAmplitude(default, set):Float = 0;
	public var Enabled(default, set):Bool = false;

	public function new():Void
	{
		shader.uTime.value = [0];
		shader.uampmul.value = [0];
		shader.uEnabled.value = [false];
	}

	public function update(elapsed:Float):Void
	{
		shader.uTime.value[0] += elapsed;
	}

	function set_waveSpeed(v:Float):Float
	{
		waveSpeed = v;
		shader.uSpeed.value = [waveSpeed];
		return v;
	}

	function set_Enabled(v:Bool):Bool
	{
		Enabled = v;
		shader.uEnabled.value = [Enabled];
		return v;
	}

	function set_waveFrequency(v:Float):Float
	{
		waveFrequency = v;
		shader.uFrequency.value = [waveFrequency];
		return v;
	}

	function set_waveAmplitude(v:Float):Float
	{
		waveAmplitude = v;
		shader.uWaveAmplitude.value = [waveAmplitude];
		return v;
	}
	#end
}
