# Implementasjon og bruk av Fiks Matrikkelføring

Her følger litt regler for implementering og bruk av protokollen.

## Grunnlagsmelding med flere bygninger
Kvittering-meldingen skal inneholde 1 kvittering for hver bygning i grunnlag-melding. 
En grunnlag melding skal altså svare og gi tilbake 1 kvitteringsmelding som inneholder listen med kvitteringer. 

## Sak med bygninger i matrikkelopplysninger
For hvert bygg i matrikkelopplysninger kjøres et [brukstilfelle](./../Brukstilfeller/README.md) i matrikkelen. 
Type brukstilfelle avhenger av tiltakstype fra tiltakslista med samme tiltak id. 
Dersom det ikke finnes noe tiltak må bruker velge brukstilfelle selv.

## Sak med bare tiltak
For hvert tiltak i tiltakslista kjøres et [brukstilfelle](./../Brukstilfeller/README.md) i matrikkelen. 
Type brukstilfelle avhenger av tiltakstype fra tiltakslista.

## Sak uten tiltak og uten bygningner
Bruker fører saken på gamlemåten i matrikkelklienten. 
Når saken er ferdig justeres kvitteringsmeldingen. 
Bruker kan legge inn tiltak id 0 og bygningsnummer for nye eller oppdaterte bygniger. 
Kan også legge inn feilmeldinger eller melding om skal ikke matrikkelføres.