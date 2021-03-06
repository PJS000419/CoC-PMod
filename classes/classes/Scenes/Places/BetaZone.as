//The secret Beta Zone, home of the cut and unfinished content.
package classes.Scenes.Places 
{
	import classes.BaseContent;
	import classes.GlobalFlags.kFLAGS;

	public class BetaZone extends BaseContent
	{
		
		public function BetaZone() {}
		
		public function betaZoneEntry():void {
			clearOutput();
			credits.modContent = true;
			credits.authorText = "Kitteh6660";
			outputText("The bizarre zone is unlike anything you've ever experienced. Looking up, you make out the " + (time.hours < 20 ? "black" : "green") + " zeros and ones in Consolas covering the otherwise-" + (time.hours < 20 ? "white" : "black") + " sky.");
			outputText("\n\nThe surrounding landscapes appear to resemble something volcanic and infernal, with oddly-shaped rocks jutting from the ground that form crags. Interestingly, paths run from where you originally entered to the various points of interest.");
			outputText("\n\nThe nearest object that catches your attention is a large sign. A bit further but still on your left is a camp consisting of a few tents. Occasionally, the purple-skinned horned creature steps out of a large tent for a breath of fresh debug-filled air."); 
			outputText("\n\nTo the right is a set of doors. They all look different from each other, one being of wooden, one metallic and the last one being of stone design.");
			outputText("\n\nFar away, you see what appears to be a subterranean-styled city under construction. Presently, the buildings appear to be constructed from seemingly-untextured colored rectangular prisms of varying sizes. A cursory glance at the sign by the unfinished city reveals the city to be named Suo'Jure when it's finished.");
			menu();
			addButton(0, "Sign", examineSign).hint("Examine the large sign and get the inside scoop on what this zone is all about!");
			addButton(1, flags[kFLAGS.MET_BEHEMOTH] == 0 ? "Tent" : "Behemoth", getGame().volcanicCrag.behemothScene.behemothIntro);
			addButton(2, "Ghoulish Hyena", getGame().desert.ghoulScene.ghoulEncounter).hint("Encounter the mysterious hyena, which you suspect is not what it seems to be.");
			addButtonDisabled(5, "Door 1: FC", "The elaborately-designed wooden doors are wrapped in chains and secured with a padlock. The note reads 'Under Construction' in large letters and beneath the texts read 'The church is not yet coded in the game.'", "Door 1: Fetish Church");
			addButton(6, "Door 2: HHC", getGame().dungeons.hellcomplex.enterDungeonDev).hint("The large metallic door intimidates you a bit. A note affixed on the door explains that the dungeon will be filled with hellhounds and where the Hellhound Master will lurk. It technically existed in the base game but not freely explorable.", "Door 2: Hellhound Complex");
			addButton(7, "Door 3: DC", getGame().dungeons.dragoncity.enterDungeonDev).hint("The label on the carved stone door reads 'Dragon City' and a brief summary on the note explains that the city will play a part in Ember's quest and swarming with Kobolds.", "Door 3: Dragon City");
			addButton(14, "Leave", camp.returnToCampUseOneHour);
		}
		
		private function examineSign():void {
			clearOutput();
			outputText("You step closer to the sign and gaze over the contents. It's lined with pictures and associated names, and beneath those are notes explaining the current status of each subject.\n\n");
			outputText("<b><u>Personalities</u></b>\n");
			outputText("<b>Ghoulish Hyena</b>\n  Status: Cut from the game and moved to Beta Zone.\n  Reason: Unfitting with the theme of the game.\n\n");
			outputText("<b>Behemoth</b>\n  Status: Cut from the game and moved to Beta Zone.\n  Reason: Subpar quality of writing.\n\n");
			outputText("<b>Corrupted Minerva</b>\n  Status: Not yet accessible.\n  Progress: Only the first few parts are coded. Coders are free to help bring this to reality.\n\n");
			outputText("<b>Demon Soldiers</b>\n  Status: Live\n  Progress: Finally coded into the game.\n\n");
			outputText("<b><u>Locations</u></b>\n");
			outputText("<b>The City of Suo'jure</b>\n  Status: City under construction, not yet accessible.\n  Progress: Document still incomplete since last checking.\n\n");
			outputText("<b>Fetish Church</b>\n  Status: Still under construction.\n  Progress: Room layout still not coded.\n\n");
			outputText("<b>Hellhound Complex</b>\n  Status: Layout established, rooms still placeholder.\n  Progress: Document still not being worked on yet.\n\n");
			outputText("<b>Dragon City</b>\n  Status: All rooms established, some placeholder description. Kobolds in training.\n  Progress: Document still being checked. Partially complete but still missing important scenes. The foundation and basic structure have been laid to make it easier to possibly implement in the future.\n\n");
			outputText("<b>Mistress Elly's Prison</b>\n  Status: Accessible in debug only.\n  Progress: Still many placeholder scenes, could do with expanding.\n\n");
			doNext(betaZoneEntry);
		}
		
	}

}