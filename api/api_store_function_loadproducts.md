
## Store.loadProducts()

> Store.loadProducts(productsId, listener)

Retrieves information about items available for sale.
This includes the price of each item, a localized name, and a localized description.

**Syntax:**

    framework.api.Store.loadProducts(arrayOfProductIdentifiers, listener)

**Example:**

    function productCallback(event)
        print("showing valid products", #event.products)
        for i=1, #event.products do
            print(event.products[i].title)              -- string.
            print(event.products[i].description)        -- string.
            print(event.products[i].price)              -- number.
            print(event.products[i].localizedPrice)     -- string.
            print(event.products[i].productIdentifier)  -- string.
        end

        print("showing invalidProducts", #event.invalidProducts)
        for i=1, #event.invalidProducts do
            print(event.invalidProducts[i])
        end
    end

    local productsId = {
        "com.anscamobile.NewExampleInAppPurchase.ConsumableTier1",
        "com.anscamobile.NewExampleInAppPurchase.NonConsumableTier1",
        "com.anscamobile.NewExampleInAppPurchase.SubscriptionTier1",
        -- "bad.product.id",
    }

    framework.api.Store.loadProducts(productsId, productCallback)

<br />

@tparam table productsId
A Lua array with each element containing a string which is the product identifier of the in-app item you want to know about.

@tparam function listener
A callback function that is invoked when the store finishes retrieving the product information.


### Returns

-   Nothing.
