function set(data) {
    data = JSON.parse(data);
	
    if (data[2] !== true) {
		$('#home-spawn').addClass('disabled');
		$('#home-spawn button').prop("disabled", true);

    $("#home-spawn .desc-text").text('Недоступно');
	}
	
    if (data[1] !== true){
		$('#org-spawn').addClass('disabled');
		$('#org-spawn button').prop("disabled", true);

    $("#org-spawn .desc-text").text('Недоступно');
    } 
}

function spawn(id) {
    mp.trigger('spawn', id);
}