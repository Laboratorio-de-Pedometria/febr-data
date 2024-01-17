# FEBR Data Processing

2020-01-17

Processing of soil data from datasets published in the Brazilian Soil Data Repository
(FEBR, https://www.pedometria.org/febr/) until the end of 2019. The data undergoes cleaning,
standardization and, when possible, harmonization. The resulting dataset is made available in a
single TXT file for reuse, respecting the original data use licenses.

The following variables are included in the dataset:

From table 'observation':

1. `taxon_sibcs`: soil classification according to the Brazilian Soil Classification System;
2. `taxon_st`: soil classification according to Soil Taxonomy;
3. `taxon_wrb`: soil classification according to the World Reference Base for Soil Resources;

From table 'layer':

1. `terrafina`: the content of the fine earth fraction (< 2 mm) in the whole soil, in g/kg;
2. `carbono`: organic carbon content in the fine earth fraction, in g/kg;
3. `argila`: total clay content in the fine earth fraction, in g/kg;
4. `silte`: total silt content in the fine earth fraction, in g/kg;
5. `areia`: total sand content in the fine earth fraction, in g/kg;
6. `ctc`: cation exchange capacity of the fine earth fraction, in cmol_c/kg;
7. `ph`: pH in water of the fine earth fraction, without a unit of measurement;
8. `ce`: electrical conductivity of fine earth fraction, in mS/cm;
9. `dsi`: density of the entire soil, in kg/dm^3.

Additional data:

- upper (`profund_sup`) and lower (`profund_inf`) depth of the sampled layer, in cm;
- observation or sampling date (`observacao_data`);
- coordinates of the observation or sampling location (`coord_x` and `coord_y`), in decimal degrees,
using SIRGAS 2000 (EPSG:4674) as the coordinate reference system.

The data cleaning procedures adopted are described in detail below. The other data standardization
and harmonization procedures are described in the help pages of the febr package for R at
https://www.pedometria.org/software/febr/.

## Contributors

The following people contributed to the data processing (in alphabetical order):

- Beatriz Hiyori Hamada (Universidade Tecnológica Federal do Paraná)
- Eloi Ribeiro (ISRIC - World Soil Information)
- Glauber José Vaz (Embrapa Informática Agropecuária)
- João Herbert Moreira Viana (Embrapa Milho e Sorgo)
- Mikael Pereira Messias (Universidade Tecnológica Federal do Paraná)
- Maria Eduarda Vilas Boas Alves (Universidade Tecnológica Federal do Paraná)
- Matheus Ferreira Ramos (Universidade Tecnológica Federal do Paraná)
- Paulo Ivonir Gubiani (Universidade Federal de Santa Maria)
- Ricardo Simão Diniz Dalmolin (Universidade Federal de Santa Maria)
- Stanley Robson de Medeiros Oliveira (Embrapa Informática Agropecuária)
- Wenceslau Geraldes Teixeira (Embrapa Solos)
