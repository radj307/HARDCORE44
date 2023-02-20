/**
 * @file    DisableBreakGrapple.reds
 * @author  radj307
 * @brief   Prevents NPCs from being able to use the 'Break Grapple' ability by forcing the check method to always return false.
 *\n        Deleting this file will restore the vanilla behaviour.
 */

@replaceMethod(GrappleStandDecisions)
protected final const func IsBreakingFreeAllowed(const stateContext: ref<StateContext>, const scriptInterface: ref<StateGameScriptInterface>) -> Bool
{
    return false; // Always return false no matter what. This prevents NPCs with the 'Break Grapple' ability from being able to use it.
}
