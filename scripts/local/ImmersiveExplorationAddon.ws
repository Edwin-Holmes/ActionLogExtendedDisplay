@wrapMethod(CR4Game) function PopulateMenuQueueMainAlways(out menus: array<name>) {
    wrappedMethod(menus);
    if (!theGame.GetInGameConfigWrapper().GetVarValue('PanelShortcuts', 'ImmersiveExplorationAddon'))
        theGame.GetInGameConfigWrapper().SetVarValue('PanelShortcuts', 'ImmersiveExplorationAddon', true);
}

@wrapMethod(CPanelShortcut) function PerformAction(targetName: name) {
    var ieWatcher : ImmersiveExplorationWatcher = GetImmExplSpawner();

    if (targetName == 'ToggleIEAutoWalk') { 
        if (ieWatcher) {
            ieWatcher.doubleTapPressed();
        }
        return;
    }
    
    wrappedMethod(targetName);
}