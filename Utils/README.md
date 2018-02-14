## Utils [0.1.0]

## Beads
### [CloseDrawerOnNavigationLinkClick](https://github.com/piotrzarzycki21/TranspiledActionScript/blob/utils/Utils/Beads/CloseDrawerOnNavigationLinkClick.as)
- Bead fixes issue in MDL library [#1246](https://github.com/google/material-design-lite/issues/1246)
- Usage:
```
<mdl:Drawer>
  <mdl:beads>
    <utils:CloseDrawerOnNavigationLinkClick />
  </mdl:beads>
  <mdl:Navigation>			
    <mdl:beads>
      <js:ConstantBinding sourceID="mainNavigationModel"
                          sourcePropertyName="drawerNavigation"
                          destinationPropertyName="dataProvider" />
    </mdl:beads>
  </mdl:Navigation>
</mdl:Drawer>
```
