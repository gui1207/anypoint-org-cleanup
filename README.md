# anypoint-org-cleanup

This API can be used to clean up and delete child business groups into an Anypoint Platform account. 

Sometimes we need to create multiple business groups in our master organization but at some point, we don't need that anymore and must clean up and delete them.

This task can be difficult to be done manually depending on the number of assets we create and configure into the organization.

## How it works

To use this API you must need: 

- An Anypoint account with the Organization Administration role for the Business Organization
- The organizationId for the business group and its name

This API will use the Anypoint Platform token provided by your user credentials and will do these steps:

1. Check if the business group is not a master organization
2. Check if the name of the business group is the same informed into the request payload
3. Delete all API Manager configuration for all environments in the business group
4. Delete all Exchange assets

The API works asynchronously. When a DELETE request is sent it will return a transactionId. You can follow up the process using the transaction resource to get the details. 

## Warning

Be careful when using this!!
