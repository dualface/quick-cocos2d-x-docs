
## Store.init()

> Store.init(listener)

Activates In-App Purchases.

Starts up the In-App Purchase engine and allows you to receive callbacks with the listener function you specify.

**Syntax:**

    framework.api.Store.init(listener)

**Example:**

    function transactionCallback(event)
        local transaction = event.transaction
        if transaction.state == "purchased" then
            print("Transaction succuessful!")
            print("productIdentifier", transaction.productIdentifier)
            print("quantity", transaction.quantity)
            print("transactionIdentifier", transaction.transactionIdentifier)
            print("date", os.date("%Y-%m-%d %H:%M:%S", transaction.date))
            print("receipt", transaction.receipt)
        elseif  transaction.state == "restored" then
            print("Transaction restored (from previous session)")
            print("productIdentifier", transaction.productIdentifier)
            print("receipt", transaction.receipt)
            print("transactionIdentifier", transaction.identifier)
            print("date", transaction.date)
            print("originalReceipt", transaction.originalReceipt)
            print("originalTransactionIdentifier", transaction.originalIdentifier)
            print("originalDate", transaction.originalDate)
        elseif transaction.state == "failed" then
            print("Transaction failed")
            print("errorCode", transaction.errorCode)
            print("errorString", transaction.errorString)
        else
            print("unknown event")
        end

        -- Once we are done with a transaction, call this to tell the store
        -- we are done with the transaction.
        -- If you are providing downloadable content, wait to call this until
        -- after the download completes.
        framework.api.Store.finishTransaction(transaction)
    end

    framework.api.Store.init(transactionCallback)

<br />

@tparam function listener
This is the listener that will handle transaction callback events.


### Returns

-   Nothing.
