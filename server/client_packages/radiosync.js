mp.events.add('playerEnterVehicle', (vehicle, seat) => {
    radioTimerId = setInterval(() => {
        radio_sync();
    }, 1000);
});

function radio_sync() {
    mp.game.audio.setRadioToStationName("OFF");
    clearInterval(radioTimerId);
};