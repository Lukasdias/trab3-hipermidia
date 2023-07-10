<ncl id="trab3">
	<head>
		<connectorBase id="connBaseId">
			<importBase alias="conn" documentURI="defaultConnBase.ncl">
			</importBase>
		</connectorBase>
		<regionBase id="regionBase1">
			<region height="100.00%" id="rgTV" left="0.00%" top="0.00%" width="100.00%" zIndex="0">
				<region bottom="25.42%" height="50.00%" id="rgVideo" left="25.06%" right="24.94%" top="24.58%" width="50.00%" zIndex="1">
				</region>
				<region bottom="0.00%" height="33.54%" id="region1" left="81.85%" right="0.00%" top="66.46%" width="18.15%" zIndex="2">
				</region>
				<region height="13.33%" id="region3" left="28.81%" top="8.96%" width="40.40%" zIndex="4">
				</region>
			</region>
		</regionBase>
		<descriptorBase id="descriptorBase1">
			<descriptor id="subzeroDesc" region="rgVideo">
			</descriptor>
			<descriptor id="toastyDesc" region="region1">
			</descriptor>
			<descriptor explicitDur="1s" id="mercyDesc" region="region3">
			</descriptor>
			<descriptor id="animalityDesc" region="rgVideo">
			</descriptor>
			<descriptor id="theEndStartDesc" region="rgVideo">
			</descriptor>
			<descriptor id="theEndEndingDesc" region="rgVideo">
			</descriptor>
		</descriptorBase>
	</head>
	<body id="app">
		<port component="subzero" id="pVideo1">
		</port>
		<media descriptor="toastyDesc" id="toasty" src="media/toasty.mp4">
		</media>
		<media descriptor="subzeroDesc" id="subzero" src="media/subzero.mp4">
			<area begin="5s" id="segMercy">
			</area>
			<area begin="4s" id="segMercyAudio">
			</area>
		</media>
		<link id="l0" xconnector="conn#onBeginStart_delay">
			<bind component="subzero" role="onBegin">
			</bind>
			<bind component="toasty" role="start">
				<bindParam name="delay" value="1s">
				</bindParam>
			</bind>
			<linkParam name="delay" value="1s">
			</linkParam>
		</link>
		<media descriptor="mercyDesc" id="mercy" src="C:/Users/diasl/Documents/UFMA/media/mercy.png">
		</media>
		<link id="l1" xconnector="conn#onBeginStart">
			<bind component="subzero" interface="segMercy" role="onBegin">
			</bind>
			<bind component="mercy" role="start">
			</bind>
		</link>
		<media id="mercy_sound" src="C:/Users/diasl/Documents/UFMA/media/mercy_sound.mp3">
		</media>
		<link id="l3" xconnector="conn#onBeginStart">
			<bind component="subzero" interface="segMercyAudio" role="onBegin">
			</bind>
			<bind component="mercy_sound" role="start">
			</bind>
		</link>
		<link id="l2" xconnector="conn#onEndStart_delay">
			<bind component="subzero" role="onEnd">
			</bind>
			<bind component="the_end" role="start">
			</bind>
			<linkParam name="delay" value="1s">
			</linkParam>
			<bind component="the_end_start" role="start">
				<bindParam name="delay" value="1s">
				</bindParam>
			</bind>
		</link>
		<media descriptor="theEndStartDesc" id="the_end_start" src="media/the_end.mp4">
		</media>
		<media descriptor="theEndEndingDesc" id="the_end_ending" src="C:/Users/diasl/Documents/UFMA/media/the_end_ending.jpg">
		</media>
		<link id="l4" xconnector="conn#onEndStart">
			<bind component="the_end_start" role="onEnd">
			</bind>
			<bind component="the_end_ending" role="start">
			</bind>
		</link>
	</body>
</ncl>
