# Kontrakter og meldingstyper for Fiks Matrikkelfoering

Json schemas og dokumentasjon for protokollen Fiks Matrikkelføring.

Videre arbeid med denne protokollen/standarden gjøres her.

XSD skjemaene er inkludert i en nuget pakke som også inneholder genererte C# models basert på skjema for .NET.
Nuget pakken [KS.Fiks.Matrikkelfoering.Models.V2](https://www.nuget.org/packages/KS.Fiks.Matrikkelfoering.Models.V2) er tilgjengelig på nuget.org.

Det er ikke tilgjengelig for java som maven-pakke for øyeblikket. Hvis det er behov for dette vil vi lage det. 

## Dokumentasjon

For hver versjon av protokollen vil det følge en egen dokumentasjon som baserer seg på Markdown og PlantUML.
Vi bruker også et [python verktøy](https://github.com/tefra/xsdata-plantuml) for å generere PlantUML klassediagrammer fra xsd-filene.

Når man gjør endringer i xsd og/eller PlantUML koden kan man kjøre `generate-uml.sh` scriptet for å generere ny PlantUML filer fra xsd samt png filer ut av PlantUML koden. 
Dette forutsetter at man har installert PlantUML og graphviz for PlantUML, python og python biblioteket nevnt ovenfor. 

Xsd-filene er blitt generert ved hjelp av et verktøy fra UML, som gjør at oppbygging og navngivning i xsd-filene ikke er optimal.
F.eks. har alle lister blitt til egne objekter, og navngivning har blitt gjort med at alle objekter som er en liste har fått en suffix med "Liste" og alle ComplexType's har fått en suffix med "Type".
Dette gjør dermed at vi får litt forvirrende navngivninger som f.eks. Tiltak, Tiltaktype, TiltaktypeType og TiltakType. Da er TiltakttypeType ComplexType for Tiltaktype, og TiltakType er ComplexType for Tiltak.
Dette gjelder spesielt `no.ks.fiks.matrikkelfoering.v2.grunnlag.xsd`. På grunn av dette får vi også et problem med genereringen av PlantUML. 
Der hvor man har to like navn, pga den ikke kan se forskjell på små og store bokstaver, som f.eks. Tilaktype og TiltakType, så vil generatoren legge på en "_1" og en av dem heter da Tiltaktype_1. 
Dette må manuelt fikses ved å legge på `as "TiltakType"` i PlantUML filen. I tillegg har vi hjulpet generatoren med relasjonene og kopiert dette til en egen fil, `grunnlag-relations.pu`. 
Denne blir ikke skrevet over hvis man genererer PlantUML på nytt og må fikses manuelt. 

### Meldingstyper og skjema

Gå til lenkene under for forklaring om bruk av skjema/meldingstyper. 
Dokumentasjonen inneholder også genererte klassediagram for xsd-skjemaene

#### [Grunnlag (no.ks.fiks.matrikkelfoering.v2.grunnlag.xsd)](./Dokumentasjon/V2/SchemaModels/no/ks/fiks/matrikkelfoering/v2/grunnlag.md)
#### [Kvittering (no.ks.fiks.matrikkelfoering.v2.kvittering.xsd)](./Dokumentasjon/V2/SchemaModels/no/ks/fiks/matrikkelfoering/v2/kvittering.md)
#### [Status (no.ks.fiks.matrikkelfoering.v2.status.xsd)](./Dokumentasjon/V2/SchemaModels/no/ks/fiks/matrikkelfoering/v2/status.md)
#### [Statussvar (no.ks.fiks.matrikkelfoering.v2.statussvar.xsd)](./Dokumentasjon/V2/SchemaModels/no/ks/fiks/matrikkelfoering/v2/statussvar.md)
#### [giFellesGeometri20120131 (giFellesGeometri20120131.xsd)](./Dokumentasjon/V2/SchemaModels/giFellesGeometri20120131.md)
#### [giFellesKodeliste20120131 (giFellesKodeliste20120131.xsd](./Dokumentasjon/V2/SchemaModels/giFellesKodeliste20120131.md)


### Implementasjon og bruk av Fiks Matrikkelføring
Forklaringer for implementering og bruk av protokollen finner man her: [Implementasjonsdetaljer](./Dokumentasjon/V2/Implementasjonsdetaljer/README.md) 

README og filer ligger under mappen  [Dokumentasjon/V2/Implementasjonsdetaljer](./Dokumentasjon/V2/Implementasjonsdetaljer)

### Brukstilfeller
Oversikt  og tabell for brukstilfeller finner man her: [Brukstilfeller](./Dokumentasjon/V2/Brukstilfeller/README.md)

README og filer ligger under mappen [Dokumentasjon/V2/Brukstilfeller](./Dokumentasjon/V2/Brukstilfeller)

### Meldingstyper

Se filen [meldingstyper.json](Schema/V2/meldingstyper/meldingstyper.json) for hvilke meldingstyper som er i denne protokollen og hvordan de henger sammen.
Under vises den genererte UML-modellen som viser hvordan meldingstypene henger sammen.
Hver meldingstype som har en payload har et tilhørende xsd-skjema med samme navn.
![meldingstyper](https://raw.githubusercontent.com/ks-no/fiks-matrikkelfoering-specification/main/Schema/V2/meldingstyper/meldingstyper.svg)

### Kodelister

Kodelistene er tilgjengelig hos [Geonorge](https://register.geonorge.no/kodelister).
Der kan man laste de ned som json-fil hvor da man finner `codevalue` som er **kodeverdi** og `label` som er **beskrivelse**.

Siden de er tilgjengelig der og det er kilden for kodelistene for _Fiks matrikkelføring_ leveres det ikke kodelister med i spesifikasjonen.
Men vi henviser til kilden i xsd skjema for felter som bruker koder. 

Eksempel på json-format hos Geonorge:

```{
  "ContainedItemsResult": {
    "Count": 4,
    "Offset": 0,
    "Limit": 0,
    "Total": 0
  },
  "id": "https://register.geonorge.no/kodelister/ebyggesak/vedtakstatus",
  "label": "VedtakStatus",
  "lang": "no",
  "contentsummary": "Oversikt over gyldige statuser for vedtak, til rapportering gjennom Fellestjenester BYGG (API-er for saksbehandlingsdata)",
  "owner": "Direktoratet for byggkvalitet",
  "status": "Sendt inn",
  "manager": "Kartverket",
  "containedItemClass": "CodelistValue",
  "uuid": "987e4d7c-7b8f-429f-bbc4-e301a28f5f8e",
  "containeditems": [
    {
      "id": "https://register.geonorge.no/kodelister/ebyggesak/vedtakstatus/10",
      "label": "Avvist",
      "lang": "no",
      "itemclass": "CodelistValue",
      "uuid": "7e814a42-d1f9-48b8-98ef-129a1bd40e2a",
      "status": "Sendt inn",
      "seoname": "avvist",
      "owner": "Direktoratet for byggkvalitet",
      "versionNumber": 1,
      "lastUpdated": "2023-08-14T13:53:51.38",
      "dateSubmitted": "2022-11-04T11:01:56.187",
      "codevalue": "10"
    },
    
    ...
```

#### Kodelistene:

##### Avløpstilknytning
Kilde: https://register.geonorge.no/kodelister/byggesoknad/avlopstilknytning

##### Bruksenhetstype
Kilde: https://register.geonorge.no/kodelister/byggesoknad/bruksenhetstype

##### Dispensasjonstype
Kilde: https://register.geonorge.no/kodelister/byggesoknad/dispensasjonstype

##### EnergiforsyningType
Kilde: https://register.geonorge.no/kodelister/byggesoknad/energiforsyningtype

##### Etasjeplan
Kilde: https://register.geonorge.no/kodelister/byggesoknad/etasjeplan

##### Kjøkkentilgang
Kilde: https://register.geonorge.no/kodelister/byggesoknad/kjokkentilgang

##### Partstype
Kilde: https://register.geonorge.no/kodelister/byggesoknad/partstype

##### Prosesskategori
Kilde: https://register.geonorge.no/kodelister/byggesoknad/s%C3%B8knadstype

##### Tiltaktype 
Kilde: https://register.geonorge.no/kodelister/byggesoknad/tiltaktype

##### Varmefordeling
Kilde: https://register.geonorge.no/kodelister/byggesoknad/varmefordeling

##### Vedtaktype
Kilde: https://register.geonorge.no/kodelister/ebyggesak/vedtakstatus

##### Bygningstype
Kilde: https://register.geonorge.no/kodelister/byggesoknad/bygningstype

##### Næringsgruppe
Kilde: https://register.geonorge.no/kodelister/byggesoknad/naeringsgruppe

##### Næringsgruppe
Kilde: https://register.geonorge.no/kodelister/byggesoknad/naeringsgruppe







