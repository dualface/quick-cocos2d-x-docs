
## Store.purchase()

> Store.purchase(productId)

Initiates a purchase transaction on a provided list of products.

This function will send out purchase requests to the store. The listener you specified in framework.api.Store.init() will be invoked when the store finishes processing the transaction.

**Syntax:**

    framework.api.Store.purchase(productId)

**Example:**

    framework.api.Store.purchase("com.framework.example.ConsumableTier1")

<br />


### Parameters

-   productId
A string which is the product identifier string.


### Returns

-   Nothing.
