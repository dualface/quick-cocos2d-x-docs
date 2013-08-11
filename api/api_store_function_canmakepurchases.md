
## Store.canMakePurchases()

> Store.canMakePurchases()

Returns true if purchases are allowed, false otherwise.

**Syntax:**

    value = framework.api.Store.canMakePurchases

**Example:**

    if framework.api.Store.canMakePurchases() then
        framework.api.Store.purchase(productId)
    else
        print("Store purchases are not available")
    end

**Note:**

iOS devices have a setting that disables purchasing. A common case for this is to prevent children from accidentally purchasing things without parents' permission. Corona provides an API to check whether purchasing is possible. Use this preemptively to avoid having your users navigate through many purchase steps only to find out at the last step that purchasing is forbidden.

<br />


### Returns

-   Returns true if purchases are allowed, false otherwise.
