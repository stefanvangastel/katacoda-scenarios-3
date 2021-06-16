In dit scenario ga je leren hoe je een geoptimaliseerde container bouwt met een ASP.NET Core applicatie er in. Hierbij ga je gebruik maken van het multi-stage build concept wat het mogelijk maakt om in een enkele Dockerfile verschillende base images te gebruiken.

Hierdoor kun je de SDK gebruiken om binaries te bouwen maar deze weglaten in het definitieve product (je applicatie image).

Aan het einde van deze oefening kan je het volgende:

* Het schrijven van een multi-stage `Dockerfile` met eigen applicatie;
* De `COPY --from` optie gebruiken om artifacts uit een ander deel van de build te gebruiken;

