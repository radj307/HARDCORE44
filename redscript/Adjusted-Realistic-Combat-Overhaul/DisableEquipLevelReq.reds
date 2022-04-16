/**
 * @file    DisableEquipLevelReq.reds
 * @author  radj307
 * @brief   Disables the level requirements for equipping items.
 *\n        This does not impact any other requirements for equipping items.
 */

@replaceMethod(InventoryItemData)
public final static func GetRequiredLevel(self: InventoryItemData) -> Int32
{
    return self.RequiredLevel <= 1 ? self.RequiredLevel : 1;
}
@replaceMethod(InventoryItemData)
public final static func SetRequiredLevel(out self: InventoryItemData, requiredLevel: Int32) -> Void
{
    self.RequiredLevel = requiredLevel <= 1 ? requiredLevel : 1;
}
