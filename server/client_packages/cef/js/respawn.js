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

var respawndata;
function setimage(data) { respawndata = JSON.parse(data); init(); }
function init() { document.getElementById("copyright").src=`https://ragemp.pro/redage_v2_7c58cbe4a038e99bc84528e683f361d5/respawn.png?update=${respawndata[0]}:${respawndata[1]}`; }

function spawn(id) {
    mp.trigger('spawn', id);
}