function set(data) {
    data = JSON.parse(data);
	
    if (data[2] !== true) {
		$('#home-spawn').addClass('disabled');
		$('#home-spawn button').prop("disabled", true);
	}
	
    if (data[1] !== true){
		$('#org-spawn').addClass('disabled');
		$('#org-spawn button').prop("disabled", true);
    } 
}

function spawn(id) {
    mp.trigger('spawn', id);
}