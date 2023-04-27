import xml.etree.cElementTree as ET

root = ET.Element("Requirements")
doc = ET.SubElement(root, "Project", name="NX_Check-Requirements")
folder = ET.SubElement(doc, "Folder", name="Other")

ET.SubElement(folder, "req1", name="goal_req")
ET.SubElement(folder, "req2", name="range_req")

tree = ET.ElementTree(root)
tree.write("filename.xml")