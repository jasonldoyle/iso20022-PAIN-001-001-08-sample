# ISO 20022 Payment Data Transformation

In this project I made an XSLT stylesheet for ISO 20022 XML data into an easily readable HTML table. The ISO number in ISO 20022 identifies the type, purpose, and version of a standardized financial message, wich in this case is a Customer Credit Transfer Initiation Message (pain.001).

## Included features

**Message ID** (PmtInfId) : This serves as a unique identifier for each payment information block, ensuring traceability and clarity, which helps users distinguish between different payment requests.

**Number of Transactions (NbOfTxs)** : Indicates the total number of individual transactions within a payment block whcih gives a quick overview of the transaction scale.

**Control Sum (CtrlSum)** : Represents the cumulative monetary value of the transactions in the payment block, offers insight into the financial size of the payment operation as well.

**Debtor Name (Dbtr/Nm)** : Identifies the entity initiating the payment. Essential for understanding who is responsible for the payment.

**Debtor IBAN (DbtrAcct/Id/IBAN)** : Specifies the debtor’s account identifier. It also enhances traceability and ensures accuracy in financial reporting.

**Currency (DbtrAcct/Ccy)** : Indicates the currency of the payment transaction. Provides context for international payments and exchange rate considerations.

## Excluded features

To maintain simplicity and focus, I excluded the following from the summary:

* Detailed Transaction Information (CdtTrfTxInf)
* Agent Details (DbtrAgt and CdtrAgt)
* Charges Information (ChrgsAcct and ChrgBr)
* Execution Date (ReqdExctnDt)
* Identifiers and Metadata (InstrId, EndToEndId)

## Data Dictionary

| Element              | Description                                                   | Type    | Example                                |
|----------------------|---------------------------------------------------------------|---------|----------------------------------------|
| **PmtInfId**         | Unique identifier for the payment information block.          | String  | 0095d7e6-c081-4d11-b5bf-c75866bab4d   |
| **NbOfTxs**          | Total number of transactions included in the payment block.   | Integer | 39                                     |
| **CtrlSum**          | Total monetary value of all transactions in the payment block.| Decimal | 12754007436                            |
| **Dbtr/Nm**          | Name of the debtor (payer) initiating the transaction.        | String  | liquid LLC                             |
| **DbtrAcct/Id/IBAN** | International Bank Account Number (IBAN) of the debtor.       | String  | MT57VEBK06770VR26JE85FR2D2VS0T0        |
| **DbtrAcct/Ccy**     | Currency of the debtor's account.                             | String  | GBP                                    |
