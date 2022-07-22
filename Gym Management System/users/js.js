let videos = document.querySelector("#video");
if (navigaor.mediaDevices && navigator.mediaDevices.getUserMedia) {
	navigator.mediaDevices.getUserMedia({video: true}).then(stream =>{
		videos.srcObject = stream;
		videos.play();
	})
}