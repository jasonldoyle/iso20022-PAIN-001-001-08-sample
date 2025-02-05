from lxml import etree

xml_file = "sample-pain-001-001-08.xml"
xslt_file = "payment_details.xslt"

xml = etree.parse(xml_file)
xslt = etree.parse(xslt_file)

transform = etree.XSLT(xslt)
result = transform(xml)

with open("campaign_contributions.html", "wb") as f:
    f.write(etree.tostring(result, pretty_print=True, method="html"))