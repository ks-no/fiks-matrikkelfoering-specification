with open("./Dokumentasjon/V2/SchemaModels/no/ks/fiks/matrikkelfoering/v2/grunnlag.pu", "r") as f:
    contents = f.readlines()

contents.insert(1, "left to right direction")

with open("./Dokumentasjon/V2/SchemaModels/no/ks/fiks/matrikkelfoering/v2/grunnlag.pu", "w") as f:
    contents = "".join(contents)
    f.write(contents)