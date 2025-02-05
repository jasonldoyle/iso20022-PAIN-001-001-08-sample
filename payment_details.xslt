<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
                xmlns:ns="urn:iso:std:iso:20022:tech:xsd:pain.001.001.08"
                exclude-result-prefixes="ns">
  <xsl:output method="html" indent="yes"/>
  
  <xsl:template match="/">
    <html>
      <head>
        <title>ISO 20022 Payment Details</title>
        <style>
          body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-color: #f4f4f9;
            color: #333;
          }
          h1 {
            text-align: center;
            color: #007bff;
          }
          table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            background-color: #ffffff;
          }
          th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
          }
          th {
            background-color: #007bff;
            color: white;
          }
          tr:nth-child(even) {
            background-color: #f9f9f9;
          }
          tr:hover {
            background-color: #f1f1f1;
          }
        </style>
      </head>
      <body>
        <h1>ISO 20022 Payment Details</h1>
        <table>
          <thead>
            <tr>
              <th>Message ID</th>
              <th>Number of Transactions</th>
              <th>Control Sum</th>
              <th>Debtor Name</th>
              <th>Debtor IBAN</th>
              <th>Currency</th>
            </tr>
          </thead>
          <tbody>
            <xsl:for-each select="//ns:CstmrCdtTrfInitn/ns:PmtInf">
              <tr>
                <td><xsl:value-of select="ns:PmtInfId"/></td>
                <td><xsl:value-of select="ns:NbOfTxs"/></td>
                <td><xsl:value-of select="ns:CtrlSum"/></td>
                <td><xsl:value-of select="ns:Dbtr/ns:Nm"/></td>
                <td><xsl:value-of select="ns:DbtrAcct/ns:Id/ns:IBAN"/></td>
                <td><xsl:value-of select="ns:DbtrAcct/ns:Ccy"/></td>
              </tr>
            </xsl:for-each>
          </tbody>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>