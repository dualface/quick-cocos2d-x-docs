
## Store.finishTransaction()

> Store.finishTransaction(transaction)

Notifies the App Store that a transaction is complete.

After you finish handling a transaction, you must call framework.api.Store.finishTransaction() on the transaction object. If you don't do this, the App Store will think your transaction was interrupted and will attempt to resume it on the next application launch.

**Syntax:**

    framework.api.Store.finishTransaction(transaction)

@tparam table transaction
The transaction object belonging to the transaction you want to mark as finished.


### Returns

-   Nothing.
