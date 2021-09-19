var CasinoMarket = new Vue({
    el: ".market",
    data: {
	active: true,
	chipbuy: 10,
	chipsale: 10,
	chipscount: null,
    },
	created: function() {
		document.addEventListener('keyup', this.keyUp);
	},
    methods:
	{
		buy: function(id) {
			mp.trigger("casino:buyChips", id);
        },
		sell: function() {
			if(this.chipscount != null)
			{
				mp.trigger("casino:sellChips", this.chipscount);
			}
        },
		exit: function() {
			mp.trigger("closeChipsMenu");
		},

		keyUp: function(event) {
			if (event.keyCode === 27) this.exit();
		}
    }
});
