<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html >

<head>
  <meta charset="UTF-8" http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <link rel="shortcut icon" type="image/x-icon" href="https://production-assets.codepen.io/assets/favicon/favicon-8ea04875e70c4b0bb41da869e81236e54394d63638a1ef12fa558a4a835f1164.ico" />
  <link rel="mask-icon" type="" href="https://production-assets.codepen.io/assets/favicon/logo-pin-f2d2b6d2c61838f7e76325261b7195c27224080bc099486ddd6dccb469b8e8e6.svg" color="#111" />
  <title>SapeMusic</title>
  
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

  
      <style>
      @import url(http://fonts.googleapis.com/css?family=Lato:400,700);
html, body {
  font-family: "Lato", sans-serif;
  background: #13242f;
  overflow: hidden;
}
.logo{

position: absolute;
      opacity:1.0;
      z-index:5;

}
#container:before {
  background-image: url('data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4gPHN2ZyB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PGRlZnM+PHJhZGlhbEdyYWRpZW50IGlkPSJncmFkIiBncmFkaWVudFVuaXRzPSJ1c2VyU3BhY2VPblVzZSIgY3g9IjUwJSIgY3k9IiIgcj0iOTUlIj48c3RvcCBvZmZzZXQ9IjIwJSIgc3RvcC1jb2xvcj0iIzAwMDAwMCIgc3RvcC1vcGFjaXR5PSIwLjAiLz48c3RvcCBvZmZzZXQ9Ijk1JSIgc3RvcC1jb2xvcj0iIzAwMDAwMCIvPjwvcmFkaWFsR3JhZGllbnQ+PC9kZWZzPjxyZWN0IHg9IjAiIHk9IjAiIHdpZHRoPSIxMDAlIiBoZWlnaHQ9IjEwMCUiIGZpbGw9InVybCgjZ3JhZCkiIC8+PC9zdmc+IA==');
  background-size: 100%;
  background-image: -moz-radial-gradient(center, ellipse cover, rgba(0, 0, 0, 0) 20%, #000000 95%);
  background-image: -webkit-radial-gradient(center, ellipse cover, rgba(0, 0, 0, 0) 20%, #000000 95%);
 background-image: radial-gradient(ellipse cover at center, rgba(0, 0, 0, 0) 20%, #000000 95%);
  position: absolute;
  content: "";
  z-index: 0;
  opacity: 0.9;
  height: 100%;
  width: 100%;
  left: 0;
  top: 0;
}
#container:after {
  background: url("http://s.cdpn.io/1715/noise-1.png");
  position: absolute;
  content: "";
  z-index: 1;
  opacity: 0.8;
  height: 100%;
  width: 100%;
  left: 0;
  top: 0;
}

audio {
  position: absolute;
  z-index: 2;
  right: 0;
  top: 0;
}

.message {
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
  text-transform: uppercase;
  border-radius: 3px;
  text-align: center;
  line-height: 1.2;
  background: rgba(0, 0, 0, 0.8);
  position: absolute;
  margin-left: -180px;
  margin-top: -30px;
  font-size: 13px;
  padding: 20px;
  display: none;
  z-index: 3;
  height: 60px;
  width: 360px;
  color: #fff;
  left: 50%;
  top: 50%;
}
.message h1, .message h2 {
  font-weight: 300;
  margin: 10px 0;
}
.message h1 a, .message h2 a {
  text-decoration: none;
  font-weight: 700;
  color: #1B676B;
}

#intro {
  display: block;
}

    </style>

  <script>
  window.console = window.console || function(t) {};
</script>

  <script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>

  
  <script>
  if (document.location.search.match(/type=embed/gi)) {
    window.parent.postMessage("resize", "*");
  }
</script>

</head>

<body translate="no" >
<div  style="z-index: 4;  position: absolute; overflow:hidden; left:25px;
  top: 25px;"><a href="welcomeuser.jsp" ><img src="images/logonew.jpg"></a></div>
  <div  style="z-index: 4;  position: absolute; overflow:hidden; left:955px; width:500px; width:233px;
  top: 25px;"><a href="audios/${param.name}" download><img src="images/download.jpg"></a></div>

  <div id='container'></div>
<div class='message' id='warning1'>
  <h1>
    This experiment requires the
    <a href='https://dvcs.w3.org/hg/audio/raw-file/tip/webaudio/specification.html' target='_blank'>Web Audio API</a>
  </h1>
  <h2>
    Please try in one of
    <a href='http://caniuse.com/#feat=audio-api' target='_blank'>these browsers</a>
  </h2>
</div>
<div class='message' id='warning2'>
  <h1>
    Safari users. You may hear audio but see no visuals. This is due to
    <a href='http://goo.gl/6WLx1' target='_blank'>this bug</a>
    in Safari 6
  </h1>
</div>
<div class='message' id='intro'>
  <h1>Simple music visualiser</h1>
  <h2>Loading audio&hellip;</h2>
</div>
    <script src="//production-assets.codepen.io/assets/common/stopExecutionOnTimeout-58d22c749295bca52f487966e382a94a495ac103faca9206cbd160bdf8aedf2a.js"></script>

  <script src='http://soulwire.github.io/sketch.js/js/sketch.min.js'></script>

    <script>
    (function () {
    var ALPHA, AudioAnalyser, COLORS, MP3_PATH, NUM_BANDS, NUM_PARTICLES, Particle, SCALE, SIZE, SMOOTHING, SPEED, SPIN;
    NUM_PARTICLES = 100;
    NUM_BANDS = 128;
    SMOOTHING = 0.5;
    MP3_PATH = 'audios/${param.name}';
    SCALE = {
        MIN: 5,
        MAX: 80
    };
    SPEED = {
        MIN: 0.2,
        MAX: 1
    };
    ALPHA = {
        MIN: 0.8,
        MAX: 0.9
    };
    SPIN = {
        MIN: 0.001,
        MAX: 0.005
    };
    SIZE = {
        MIN: 0.5,
        MAX: 1.25
    };
    COLORS = [
        '#69D2E7',
        '#1B676B',
        '#BEF202',
        '#EBE54D',
        '#00CDAC',
        '#1693A5',
        '#F9D423',
        '#FF4E50',
        '#E7204E',
        '#0CCABA',
        '#FF006F'
    ];
    AudioAnalyser = function () {
        AudioAnalyser.AudioContext = self.AudioContext || self.webkitAudioContext;
        AudioAnalyser.enabled = AudioAnalyser.AudioContext != null;
        function AudioAnalyser(audio, numBands, smoothing) {
            var src;
            this.audio = audio != null ? audio : new Audio();
            this.numBands = numBands != null ? numBands : 256;
            this.smoothing = smoothing != null ? smoothing : 0.3;
            if (typeof this.audio === 'string') {
                src = this.audio;
                this.audio = new Audio();
                this.audio.crossOrigin = 'anonymous';
                this.audio.controls = true;
                this.audio.src = src;
            }
            this.context = new AudioAnalyser.AudioContext();
            this.jsNode = this.context.createScriptProcessor(2048, 1, 1);
            this.analyser = this.context.createAnalyser();
            this.analyser.smoothingTimeConstant = this.smoothing;
            this.analyser.fftSize = this.numBands * 2;
            this.bands = new Uint8Array(this.analyser.frequencyBinCount);
            this.audio.addEventListener('canplay', function (_this) {
                return function () {
                    _this.source = _this.context.createMediaElementSource(_this.audio);
                    _this.source.connect(_this.analyser);
                    _this.analyser.connect(_this.jsNode);
                    _this.jsNode.connect(_this.context.destination);
                    _this.source.connect(_this.context.destination);
                    return _this.jsNode.onaudioprocess = function () {
                        _this.analyser.getByteFrequencyData(_this.bands);
                        if (!_this.audio.paused) {
                            return typeof _this.onUpdate === 'function' ? _this.onUpdate(_this.bands) : void 0;
                        }
                    };
                };
            }(this));
        }
        AudioAnalyser.prototype.start = function () {
            return this.audio.play();
        };
        AudioAnalyser.prototype.stop = function () {
            return this.audio.pause();
        };
        return AudioAnalyser;
    }();
    Particle = function () {
        function Particle(x1, y1) {
            this.x = x1 != null ? x1 : 0;
            this.y = y1 != null ? y1 : 0;
            this.reset();
        }
        Particle.prototype.reset = function () {
            this.level = 1 + floor(random(4));
            this.scale = random(SCALE.MIN, SCALE.MAX);
            this.alpha = random(ALPHA.MIN, ALPHA.MAX);
            this.speed = random(SPEED.MIN, SPEED.MAX);
            this.color = random(COLORS);
            this.size = random(SIZE.MIN, SIZE.MAX);
            this.spin = random(SPIN.MAX, SPIN.MAX);
            this.band = floor(random(NUM_BANDS));
            if (random() < 0.5) {
                this.spin = -this.spin;
            }
            this.smoothedScale = 0;
            this.smoothedAlpha = 0;
            this.decayScale = 0;
            this.decayAlpha = 0;
            this.rotation = random(TWO_PI);
            return this.energy = 0;
        };
        Particle.prototype.move = function () {
            this.rotation += this.spin;
            return this.y -= this.speed * this.level;
        };
        Particle.prototype.draw = function (ctx) {
            var alpha, power, scale;
            power = exp(this.energy);
            scale = this.scale * power;
            alpha = this.alpha * this.energy * 1.5;
            this.decayScale = max(this.decayScale, scale);
            this.decayAlpha = max(this.decayAlpha, alpha);
            this.smoothedScale += (this.decayScale - this.smoothedScale) * 0.3;
            this.smoothedAlpha += (this.decayAlpha - this.smoothedAlpha) * 0.3;
            this.decayScale *= 0.985;
            this.decayAlpha *= 0.975;
            ctx.save();
            ctx.beginPath();
            ctx.translate(this.x + cos(this.rotation * this.speed) * 250, this.y);
            ctx.rotate(this.rotation);
            ctx.scale(this.smoothedScale * this.level, this.smoothedScale * this.level);
            ctx.moveTo(this.size * 0.5, 0);
            ctx.lineTo(this.size * -0.5, 0);
            ctx.lineWidth = 1;
            ctx.globalAlpha = this.smoothedAlpha / this.level;
            ctx.strokeStyle = this.color;
            ctx.stroke();
            return ctx.restore();
        };
        return Particle;
    }();
    Sketch.create({
        particles: [],
        setup: function () {
            var analyser, error, i, intro, j, particle, ref, warning, x, y;
            for (i = j = 0, ref = NUM_PARTICLES - 1; j <= ref; i = j += 1) {
                if (window.CP.shouldStopExecution(1)) {
                    break;
                }
                x = random(this.width);
                y = random(this.height * 2);
                particle = new Particle(x, y);
                particle.energy = random(particle.band / 256);
                this.particles.push(particle);
            }
            window.CP.exitedLoop(1);
            if (AudioAnalyser.enabled) {
                try {
                    analyser = new AudioAnalyser(MP3_PATH, NUM_BANDS, SMOOTHING);
                    analyser.onUpdate = function (_this) {
                        return function (bands) {
                            var k, len, ref1, results;
                            ref1 = _this.particles;
                            results = [];
                            for (k = 0, len = ref1.length; k < len; k++) {
                                particle = ref1[k];
                                results.push(particle.energy = bands[particle.band] / 256);
                            }
                            return results;
                        };
                    }(this);
                    analyser.start();
                    document.body.appendChild(analyser.audio);
                    intro = document.getElementById('intro');
                    intro.style.display = 'none';
                    if (/Safari/.test(navigator.userAgent) && !/Chrome/.test(navigator.userAgent)) {
                        warning = document.getElementById('warning2');
                        return warning.style.display = 'block';
                    }
                } catch (_error) {
                    error = _error;
                }
            } else {
                warning = document.getElementById('warning1');
                return warning.style.display = 'block';
            }
        },
        draw: function () {
            var j, len, particle, ref, results;
            this.globalCompositeOperation = 'lighter';
            ref = this.particles;
            results = [];
            for (j = 0, len = ref.length; j < len; j++) {
                if (window.CP.shouldStopExecution(2)) {
                    break;
                }
                particle = ref[j];
                if (particle.y < -particle.size * particle.level * particle.scale * 2) {
                    particle.reset();
                    particle.x = random(this.width);
                    particle.y = this.height + particle.size * particle.scale * particle.level;
                }
                particle.move();
                results.push(particle.draw(this));
            }
            window.CP.exitedLoop(2);
            return results;
        }
    });
}.call(this));
  //# sourceURL=pen.js
  </script>

  


</body>
<jsp:include page="footer.jsp" />
</html>
