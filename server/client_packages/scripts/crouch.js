const movementClipSet = "move_ped_crouched";
const strafeClipSet = "move_ped_crouched_strafing";
const clipSetSwitchTime = 0.25;

const loadClipSet = (clipSetName) => {
    mp.game.streaming.requestClipSet(clipSetName);
    while (!mp.game.streaming.hasClipSetLoaded(clipSetName)) mp.game.wait(0);
};

// load clip sets
loadClipSet(movementClipSet);
loadClipSet(strafeClipSet);

// apply clip sets if streamed player is crouching
mp.events.add("entityStreamIn", (entity) => {
    if (entity.type === "player" && entity.getVariable("isCrouched")) {
        entity.setMovementClipset(movementClipSet, clipSetSwitchTime);
        entity.setStrafeClipset(strafeClipSet);
    }
});

// apply/reset clip sets when isCrouched changes for a streamed player
mp.events.addDataHandler("isCrouched", (entity, value) => {
    if (entity.type === "player") {
        if (value) {
            entity.setMovementClipset(movementClipSet, clipSetSwitchTime);
            entity.setStrafeClipset(strafeClipSet);
        } else {
            entity.resetMovementClipset(clipSetSwitchTime);
            entity.resetStrafeClipset();
        }
    }
});

// CTRL key to toggle crouching
mp.keys.bind(Keys.VK_CONTROL, false, () => {
if (!loggedin || chatActive || editing || new Date().getTime() - lastCheck < 1000 || global.menuOpened || localplayer.vehicle) return;
    mp.events.callRemote("toggleCrouch");
});

mp.events.add('render', () => {
    try {
        mp.game.controls.disableControlAction(2, 36, true);
    }
    catch {}
});