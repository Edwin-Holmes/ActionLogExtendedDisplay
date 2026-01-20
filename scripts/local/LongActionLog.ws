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
                                      // edit this number: 1s = 1000
            queue.SetMemberFlashNumber("msgVisibilityDuration", 9000);
        }
    }

    return retVal;
}