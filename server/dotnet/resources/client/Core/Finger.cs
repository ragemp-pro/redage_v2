using GTANetworkAPI;
using System;
using System.Collections.Generic;
using System.Text;

namespace NeptuneEvo.Core
{
    class Fingerpointing : Script
    {
        [RemoteEvent("fpsync.update")]
        public static void FingerPoint(Player sender, float camPitch, float camHeading)
        {
            NAPI.ClientEvent.TriggerClientEventInRange(sender.Position, 100, "fpsync.update", sender.Handle, camPitch, camHeading);
        }

        [RemoteEvent("toggleCrouch")]
        public static void ToggleCrouch(Player player)
        {
            if (!player.HasSharedData("isCrouched")) player.SetSharedData("isCrouched", true);
            else player.SetSharedData("isCrouched", !player.GetSharedData<bool>("isCrouched"));
        }
    }
}
