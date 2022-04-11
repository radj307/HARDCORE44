/**
 * This is the original script from RCO, included for compatibility.
 */
@replaceMethod(EquipmentSystemPlayerData)
 public final const func IsEquippable(itemData: wref<gameItemData>) -> Bool {
        return true;
  }
// Based on v1.31, removes item level against player level requirement check.
@replaceMethod(InventoryItemDisplayController)
protected func UpdateRequirements() -> Void {
  let localItemData: ref<gameItemData>;
  let requirementData: SItemStackRequirementData;
  let requirement: Bool = true;
  let moneyRequirementFail: Bool = Equals(this.m_itemDisplayContext, ItemDisplayContext.Vendor) && !this.m_enoughMoney;
  let streetCredRequirementMet: Bool = true;
  this.m_requirementsMet = true;
  inkWidgetRef.SetState(this.m_requirementsWrapper, n"Default");
  if moneyRequirementFail && !this.m_isBuybackStack {
    this.m_labelsContainerController.Add(ItemLabelType.Money);
  };
  localItemData = InventoryItemData.GetGameItemData(this.m_itemData);
  if IsDefined(localItemData) && localItemData.GetStatValueByType(gamedataStatType.Strength) > 0.00 && InventoryItemData.GetPlayerStrenght(this.m_itemData) < RoundF(localItemData.GetStatValueByType(gamedataStatType.Strength)) {
    requirement = false;
  }
  if !InventoryItemData.IsRequirementMet(this.m_itemData) {
    requirementData = InventoryItemData.GetRequirement(this.m_itemData);
    if Equals(requirementData.statType, gamedataStatType.StreetCred) && InventoryItemData.GetPlayerStreetCred(this.m_itemData) < RoundF(requirementData.requiredValue) {
      streetCredRequirementMet = false;
    };
    requirement = false;
  } else {
    if !InventoryItemData.IsEquippable(this.m_itemData) {
      requirement = false;
    };
  };
  if !streetCredRequirementMet {
    inkWidgetRef.SetState(this.m_requirementsWrapper, n"StreetCred");
    this.m_requirementsMet = false;
  } else {
    if moneyRequirementFail {
      inkWidgetRef.SetState(this.m_requirementsWrapper, n"Money");
      this.m_requirementsMet = false;
    } else {
      if !requirement {
        inkWidgetRef.SetState(this.m_requirementsWrapper, n"Requirements");
        this.m_requirementsMet = false;
      };
    };
  };
  if Equals(this.m_itemDisplayContext, ItemDisplayContext.Crafting) {
    inkWidgetRef.SetState(this.m_requirementsWrapper, !this.m_isUpgradable ? n"NoCraftable" : n"Default");
  };
}

@replaceMethod(GrappleStandDecisions)protected final const func IsBreakingFreeAllowed(const stateContext: ref<StateContext>, const scriptInterface: ref<StateGameScriptInterface>) -> Bool {return false;}