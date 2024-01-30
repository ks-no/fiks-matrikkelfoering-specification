echo "Generating PlantUML files from xsd with xsdata python library"
xsdata Schema/V2/no.ks.fiks.matrikkelfoering.v2.grunnlag.xsd --output plantuml --package Dokumentasjon/V2/SchemaModels 
xsdata Schema/V2/no.ks.fiks.matrikkelfoering.v2.kvittering.xsd --output plantuml --package Dokumentasjon/V2/SchemaModels 
xsdata Schema/V2/no.ks.fiks.matrikkelfoering.v2.status.xsd --output plantuml --package Dokumentasjon/V2/SchemaModels 
xsdata Schema/V2/no.ks.fiks.matrikkelfoering.v2.statussvar.xsd --output plantuml --package Dokumentasjon/V2/SchemaModels 

echo "Using python3 to prettify generated plantuml file(s)"
python3 ./prettify-plantuml.py

echo "Generating png files from puml and pu files"
plantuml "Dokumentasjon/**/*.puml"
plantuml "Dokumentasjon/**/*.pu"

echo "Generating svg files from puml and pu files"
plantuml "Dokumentasjon/**/*.puml" -tsvg
plantuml "Dokumentasjon/**/*.pu" -tsvg
plantuml "Schema/V2/**/*.puml" -tsvg


