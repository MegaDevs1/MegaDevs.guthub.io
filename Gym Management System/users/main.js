LoadData();
function LoadData(){
	let SendingData = {
		"action" : "ReadAll"
}
$.ajax({
	method : "POST",
	datatype : "JSON",
	url : "apis.php",
	data : "SendingData",
	success : function(data) {
		let status=data.status;
		let response = data.data;
		if (status) {
			response.forEach(item=>{
				console.log(item);
			})
		}else{
			console.log("something is wrong");

		}
	}
 })


}