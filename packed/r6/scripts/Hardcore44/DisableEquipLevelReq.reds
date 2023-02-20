/**
 * @file    DisableEquipLevelReq.reds
 * @author  radj307
 * @brief   Disables the level requirements for equipping items.
 *\n        This does not impact any other requirements for equipping items.
 */

// This overrides the GetRequiredLevel method, forcing the maximum possible level requirement to 1
@replaceMethod(InventoryItemData)
public final static func GetRequiredLevel(self: InventoryItemData) -> Int32
{
    return self.RequiredLevel <= 1 ? self.RequiredLevel : 1;
}
// This overrides the SetRequiredLevel method, forcing the maximum possible level requirement to 1
@replaceMethod(InventoryItemData)
public final static func SetRequiredLevel(out self: InventoryItemData, requiredLevel: Int32) -> Void
{
    self.RequiredLevel = requiredLevel <= 1 ? requiredLevel : 1;
}
// This overrides the IsEquippable method, replacing only the level requirement check.
@replaceMethod(EquipmentSystemPlayerData)
public final const func IsEquippable(itemData: wref<gameItemData>) -> Bool
{
    return itemData != null                                                 //< Item data cannot be null
        && !RPGManager.IsItemBroken(itemData)                               //< Item cannot be broken
        && this.CheckEquipPrereqs(itemData.GetID(), itemData.GetVariant()); //< Equip Prereqs check must return true
}
