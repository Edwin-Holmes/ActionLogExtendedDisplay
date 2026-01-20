@wrapMethod(CR4HudModuleConsole) function OnConfigUI(){
    var flashModule: CScriptedFlashSprite;
    var queue: CScriptedFlashObject;
    var retVal: bool;

    retVal = wrappedMethod();

    flashModule = GetModuleFlash();
    if (flashModule)
    {
        queue = flashModule.GetMemberFlashObject("messagesQueue");
        if (queue)
        {
            queue.SetMemberFlashNumber("msgVisibilityDuration", 9000);
        }
    }

    return retVal;
}