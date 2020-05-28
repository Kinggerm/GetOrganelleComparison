# GetOrganelleComparison

This repository aims to make all our tests/comparisons reproducible. These  mainly include: 
* Comparisons among published plastomes, plastomes re-assembled using GetOrganelle v1.6.2, and plastomes re-assembled using NOVOPlasty v2.7.2. 
* Assembling animal and fungal mitogenomes using GetOrganelle v1.6.2
* Performance characteristics of GetOrganelle using different parameters.

## Preparing

If you want to reproduce our results on your own computer, please
* **Download files in GetOrganelleComparison/bin** using `svn co https://github.com/Kinggerm/GetOrganelleComparison/trunk/bin` (ca. 23Mb uncompressed). You can also use `git clone git://github.com/Kinggerm/GetOrganelleComparison` to download the whole repository (ca. 1.9Gb uncompressed).
* **Download the dataset** (see <a href="#samples">Samples</a>) using `1.downloading_data.sh` in `GetOrganelleComparison/bin`.
* **Download and install [GetOrganelle v1.6.2](https://github.com/Kinggerm/GetOrganelle/releases/tag/v1.6.2)** as well as its dependencies ([instruction](https://github.com/Kinggerm/GetOrganelle/wiki/Installation#2-using-the-setuppy)).
NOVOPlasty v2.7.2 is included in GetOrganelleComparison/bin and not needed to be specifically installed. 

## Running

After finishing the <a href="#preparing">Preparing</a>, you can follow the following lines to reproduce our results.
* Execute `2-1.assembling_50_plastomes_using_GetOrganelle.sh` to do the plastome assembly using GetOrganelle and execute `2-2.evaluating_GetOrganelle_plastomes.sh` to evaluate the re-assembled plastomes using reads mapping.
* Execute `3-1.assembling_50_plastomes_using_NOVOPlasty.sh` to do the plastome assembly using NOVOPlasty and execute `3-2.evaluating_NOVOPlasty_plastomes.sh` to evaluate the re-assembled plastomes using reads mapping.
* Execute `4.evaluating_Published_plastomes.sh` to evaluate the published plastomes.
* Execute `5-1.assembling_56_animal_mitogenomes_using_GetOrganelle.sh` to assemble animal mitogenoms using GetOrganelle and execute `5-2.evaluating_GetOrganelle_animal_mitogenomes.sh` to evaluate the assembled mitogenomes using gene hits.
* Execute `6-1.assembling_50_fungal_mitogenomes_using_GetOrganelle.sh` to assemble fungal mitogenoms using GetOrganelle and execute `6-2.evaluating_GetOrganelle_fungal_mitogenomes.sh` to evaluate the assembled mitogenomes using gene hits.
* Execute `7.assessing_GetOrganelle_performance_characteristics.sh` to assess GetOrganelle using a gradient of word size ratio values, different sizes of the reference, pre-grouping or not. The raw data is a reduced size (500M) of *Haberlea rhodopensis* (SRR4428742; see <a href="#samples">Samples</a>).
* Execute `8-1.assembling_56_animal_mitogenomes_using_NOVOPlasty.sh` to assemble animal mitogenoms using NOVOPlasty and execute `8-2.evaluating_NOVOPlasty_animal_mitogenomes.sh` to evaluate the assembled mitogenomes using gene hits.
* Execute `9-1.assembling_50_fungal_mitogenomes_using_NOVOPlasty.sh` to assemble fungal mitogenoms using GetOrganelle and execute `9-2.evaluating_NOVOPlasty_fungal_mitogenomes.sh` to evaluate the assembled mitogenomes using gene hits.

## Results

A simplified assembly results of GetOrganelle, NOVOPlasty and/or Published were deposited in `GetOrganelleComparison/res`.

A simplified evaluation results for GetOrganelle, NOVOPlasty and/or Published were deposited in `GetOrganelleComparison/eval`.

## Sample Info

### 50 Plant Datasets

We selected 50 samples of vascular plants with raw reads achieved in the database of Sequence Reads Archive (SRA). Raw reads of the 50 samples are associated with published plastome, which provided a great opportunity to compare the differences between the published plastome and the newly reassembled plastomes. In the all tests, if the tested data less than 10,000,00 reads for each end, we used all the reads; if the data was more than 10,000,000 reads of each end, we only select the first 10,000,000 reads for each ends.

Major Clade/Grade | Order | Family | Species | SRA RunID | Sequecing plastform | Read length (bp) | Published Accession No.
---------------- | ---------------- | ---------------- | ---------------- | ---------------- | ---------------- | ---------------- | ----------------
Lycopodiopsida | Selaginellales | Selaginellaceae | *Selaginella kraussiana* (Kunze) A. Braun | [SRR2037123](https://www.ncbi.nlm.nih.gov/sra/SRR2037123) | HiSeq 2000 | 2*100 | [MH549643.1](https://www.ncbi.nlm.nih.gov/nuccore/MH549643.1)
Polypodiopsida | Salviniales | Salviniaceae | *Azolla filiculoides* Lam. | [SRR6932851](https://www.ncbi.nlm.nih.gov/sra/SRR6932851) | HiSeq 2000 | 2*100 | [MF177094.1](https://www.ncbi.nlm.nih.gov/nuccore/MF177094.1)
Polypodiopsida | Salviniales | Salviniaceae | *Salvinia cucullata* Roxb. | [SRR6478596](https://www.ncbi.nlm.nih.gov/sra/SRR6478596) | HiSeq 2000 | 2*125 | [MF177095.1](https://www.ncbi.nlm.nih.gov/nuccore/MF177095.1)
Polypodiopsida | Ophioglossales | Ophioglossaceae | *Mankyua chejuensis* B.Y.Sun, M.H.Kim & C.H.Kim | [SRR7630500](https://www.ncbi.nlm.nih.gov/sra/SRR7630500) | MiSeq | 2*300 | [KP205433.1](https://www.ncbi.nlm.nih.gov/nuccore/KP205433.1)
Ginkgophyta | Ginkgoales | Ginkgoaceae | *Ginkgo biloba* L. | [ERR2206741](https://www.ncbi.nlm.nih.gov/sra/ERR2206741) | HiSeq 2000 | 2*100 | [MG922595.1](https://www.ncbi.nlm.nih.gov/nuccore/MG922595.1)
Pinophyta | Cupressales | Cupressaceae | *Juniperus cedrus* Webb & Berthel. | [SRR1145775](https://www.ncbi.nlm.nih.gov/sra/SRR1145775) | HiSeq 2000 | 2*100 | [KT378453.1](https://www.ncbi.nlm.nih.gov/nuccore/KT378453.1)
Pinophyta | Pinales | Pinaceae | *Picea abies* (L.) H. Karst. | [ERR268390](https://www.ncbi.nlm.nih.gov/sra/ERR268390) | HiSeq 2000 | 2*100 | [HF937082.1](https://www.ncbi.nlm.nih.gov/nuccore/HF937082.1)
Pinophyta | Pinales | Pinaceae | *Picea sitchensis* (Bong.) Carrière | [SRR5028199](https://www.ncbi.nlm.nih.gov/sra/SRR5028199) | HiSeq X Ten | 2*150 | [KU215903.2](https://www.ncbi.nlm.nih.gov/nuccore/KU215903.2)
ANA Grade | Austrobaileyales | Schisandraceae | *Illicium anisatum* L. | [SRR5602608](https://www.ncbi.nlm.nih.gov/sra/SRR5602608) | MiSeq | 2*250 | [KY085919.1](https://www.ncbi.nlm.nih.gov/nuccore/KY085919.1)
ANA Grade | Austrobaileyales | Schisandraceae | *Illicium floridanum* J. Ellis | [SRR5602609](https://www.ncbi.nlm.nih.gov/sra/SRR5602609) | MiSeq | 2*300 | [KY085892.1](https://www.ncbi.nlm.nih.gov/nuccore/KY085892.1)
ANA Grade | Austrobaileyales | Schisandraceae | *Illicium henryi* Diels | [SRR5602610](https://www.ncbi.nlm.nih.gov/sra/SRR5602610) | MiSeq | 2*300 | [KY085910.1](https://www.ncbi.nlm.nih.gov/nuccore/KY085910.1)
ANA Grade | Austrobaileyales | Schisandraceae | *Illicium verum* Hook. f. | [SRR5602607](https://www.ncbi.nlm.nih.gov/sra/SRR5602607) | MiSeq | 2*250 | [KY085896.1](https://www.ncbi.nlm.nih.gov/nuccore/KY085896.1)
Magnoliids | Laurales | Lauraceae | *Laurus nobilis* L. | [SRR5602602](https://www.ncbi.nlm.nih.gov/sra/SRR5602602) | MiSeq | 2*300 | [KY085912.1](https://www.ncbi.nlm.nih.gov/nuccore/KY085912.1)
Magnoliids | Magnoliales | Magnoliaceae | *Magnolia biondii* Pamp. | [SRR5602588](https://www.ncbi.nlm.nih.gov/sra/SRR5602588) | MiSeq | 2*300 | [KY085894.1](https://www.ncbi.nlm.nih.gov/nuccore/KY085894.1)
Magnoliids | Magnoliales | Magnoliaceae | *Magnolia denudata* Desr. | [SRR5602603](https://www.ncbi.nlm.nih.gov/sra/SRR5602603) | MiSeq | 2*300 | [KY085917.1](https://www.ncbi.nlm.nih.gov/nuccore/KY085917.1)
Magnoliids | Magnoliales | Magnoliaceae | *Magnolia officinalis* Rehder & E.H. Wilson | [SRR5602589](https://www.ncbi.nlm.nih.gov/sra/SRR5602589) | MiSeq | 2*300 | [KY085916.1](https://www.ncbi.nlm.nih.gov/nuccore/KY085916.1)
Monocots | Asparagales | Amaryllidaceae | *Allium sativum* L. | [SRR5602598](https://www.ncbi.nlm.nih.gov/sra/SRR5602598) | MiSeq | 2*300 | [KY085913.1](https://www.ncbi.nlm.nih.gov/nuccore/KY085913.1)
Monocots | Dioscoreales | Dioscoreaceae | *Dioscorea villosa* L. | [SRR5602590](https://www.ncbi.nlm.nih.gov/sra/SRR5602590) | MiSeq | 2*300 | [KY085893.1](https://www.ncbi.nlm.nih.gov/nuccore/KY085893.1)
Monocots | Zingiberales | Musaceae | *Musa balbisiana* Colla | [SRR2057084](https://www.ncbi.nlm.nih.gov/sra/SRR2057084) | HiSeq 2000 | 2*100 | [KT595228.1](https://www.ncbi.nlm.nih.gov/nuccore/KT595228.1)
Basal Eudicots | Ranunculales | Ranunculaceae | *Actaea racemosa* L. | [SRR5602599](https://www.ncbi.nlm.nih.gov/sra/SRR5602599) | MiSeq | 2*250 | [KY085920.1](https://www.ncbi.nlm.nih.gov/nuccore/KY085920.1)
Basal Eudicots | Ranunculales | Ranunculaceae | *Hydrastis canadensis* L. | [SRR5602606](https://www.ncbi.nlm.nih.gov/sra/SRR5602606) | MiSeq | 2*250 | [KY085918.1](https://www.ncbi.nlm.nih.gov/nuccore/KY085918.1)
Fabids | Rosales | Rosaceae | *Eriobotrya japonica* (Thunb.) Lindl. | [SRR5602604](https://www.ncbi.nlm.nih.gov/sra/SRR5602604) | MiSeq | 2*250 | [KY085905.1](https://www.ncbi.nlm.nih.gov/nuccore/KY085905.1)
Fabids | Rosales | Rosaceae | *Fragaria virginiana* Mill. | [SRR5602605](https://www.ncbi.nlm.nih.gov/sra/SRR5602605) | MiSeq | 2*300 | [KY085911.1](https://www.ncbi.nlm.nih.gov/nuccore/KY085911.1)
Fabids | Rosales | Rosaceae | *Prunus dulcis* (Mill.) D.A. Webb | [SRR5602582](https://www.ncbi.nlm.nih.gov/sra/SRR5602582) | MiSeq | 2*300 | [KY085904.1](https://www.ncbi.nlm.nih.gov/nuccore/KY085904.1)
Malvids | Malvales | Cytinaceae | *Cytinus hypocistis* (L.) L. | [ERR964904](https://www.ncbi.nlm.nih.gov/sra/ERR964904) | HiSeq 2000 | 2*100 | [KT335971.1](https://www.ncbi.nlm.nih.gov/nuccore/KT335971.1)
Malvids | Malvales | Malvaceae | *Althaea officinalis* L. | [SRR5602596](https://www.ncbi.nlm.nih.gov/sra/SRR5602596) | MiSeq | 2*300 | [KY085914.1](https://www.ncbi.nlm.nih.gov/nuccore/KY085914.1)
Malvids | Malvales | Malvaceae | *Theobroma cacao* L. | [SRR5602583](https://www.ncbi.nlm.nih.gov/sra/SRR5602583) | MiSeq | 2*300 | [KY085907.1](https://www.ncbi.nlm.nih.gov/nuccore/KY085907.1)
Malvids | Myrtales | Myrtaceae | *Pimenta dioica* (L.) Merr. | [SRR5602585](https://www.ncbi.nlm.nih.gov/sra/SRR5602585) | MiSeq | 2*300 | [KY085891.1](https://www.ncbi.nlm.nih.gov/nuccore/KY085891.1)
Malvids | Piperales | Piperaceae | *Piper auritum* Kunth | [SRR5602592](https://www.ncbi.nlm.nih.gov/sra/SRR5602592) | MiSeq | 2*300 | [KY085906.1](https://www.ncbi.nlm.nih.gov/nuccore/KY085906.1)
Malvids | Piperales | Piperaceae | *Piper nigrum* L. | [SRR5602591](https://www.ncbi.nlm.nih.gov/sra/SRR5602591) | MiSeq | 2*300 | [KY085899.1](https://www.ncbi.nlm.nih.gov/nuccore/KY085899.1)
Malvids | Sapindales | Burseraceae | *Boswellia sacra* Flueck. | [SRR5602594](https://www.ncbi.nlm.nih.gov/sra/SRR5602594) | MiSeq | 2*300 | [KY085915.1](https://www.ncbi.nlm.nih.gov/nuccore/KY085915.1)
Malvids | Sapindales | Rutaceae | *Citrus limon* (L.) Osbeck | [SRR5602593](https://www.ncbi.nlm.nih.gov/sra/SRR5602593) | MiSeq | 2*250 | [KY085897.1](https://www.ncbi.nlm.nih.gov/nuccore/KY085897.1)
Campanulids | Apiales | Araliaceae | *Eleutherococcus senticosus* (Rupr. ex Maxim.) Maxim. | [SRR5602586](https://www.ncbi.nlm.nih.gov/sra/SRR5602586) | MiSeq | 2*300 | [KY085901.1](https://www.ncbi.nlm.nih.gov/nuccore/KY085901.1)
Campanulids | Asterales | Asteraceae | *Artemisia annua* L. | [SRR5602595](https://www.ncbi.nlm.nih.gov/sra/SRR5602595) | MiSeq | 2*250 | [KY085890.1](https://www.ncbi.nlm.nih.gov/nuccore/KY085890.1)
Campanulids | Asterales | Asteraceae | *Echinacea angustifolia* DC. | [SRR5602579](https://www.ncbi.nlm.nih.gov/sra/SRR5602579) | MiSeq | 2*300 | [KX548221.1](https://www.ncbi.nlm.nih.gov/nuccore/KX548221.1)
Campanulids | Asterales | Asteraceae | *Echinacea atrorubens* (Nutt.) Nutt. | [SRR5602578](https://www.ncbi.nlm.nih.gov/sra/SRR5602578) | MiSeq | 2*250 | [KX548220.1](https://www.ncbi.nlm.nih.gov/nuccore/KX548220.1)
Campanulids | Asterales | Asteraceae | *Echinacea laevigata* (C.L. Boynton & Beadle) S.F. Blake | [SRR5602581](https://www.ncbi.nlm.nih.gov/sra/SRR5602581) | MiSeq | 2*250 | [KX548219.1](https://www.ncbi.nlm.nih.gov/nuccore/KX548219.1)
Campanulids | Asterales | Asteraceae | *Echinacea paradoxa* (Norton) Britton | [SRR5602575](https://www.ncbi.nlm.nih.gov/sra/SRR5602575) | MiSeq | 2*300 | [KX548217.1](https://www.ncbi.nlm.nih.gov/nuccore/KX548217.1)
Campanulids | Asterales | Asteraceae | *Echinacea purpurea* (L.) Moench | [SRR5602574](https://www.ncbi.nlm.nih.gov/sra/SRR5602574) | MiSeq | 2*300 | [KX548224.1](https://www.ncbi.nlm.nih.gov/nuccore/KX548224.1)
Campanulids | Asterales | Asteraceae | *Echinacea sanguinea* Nutt. | [SRR5602577](https://www.ncbi.nlm.nih.gov/sra/SRR5602577) | MiSeq | 2*250 | [KX548225.1](https://www.ncbi.nlm.nih.gov/nuccore/KX548225.1)
Campanulids | Asterales | Asteraceae | *Echinacea speciosa* Lindl. | [SRR5602576](https://www.ncbi.nlm.nih.gov/sra/SRR5602576) | MiSeq | 2*250 | [KX548222.1](https://www.ncbi.nlm.nih.gov/nuccore/KX548222.1)
Campanulids | Asterales | Asteraceae | *Echinacea tennesseensis* (Beadle) Small | [SRR5602587](https://www.ncbi.nlm.nih.gov/sra/SRR5602587) | MiSeq | 2*250 | [KX548223.1](https://www.ncbi.nlm.nih.gov/nuccore/KX548223.1)
Lamiids | Gentianales | Rubiaceae | *Coffea arabica* L. | [SRR5602572](https://www.ncbi.nlm.nih.gov/sra/SRR5602572) | MiSeq | 2*300 | [KY085909.1](https://www.ncbi.nlm.nih.gov/nuccore/KY085909.1)
Lamiids | Gentianales | Rubiaceae | *Mitragyna speciosa* (Korth.) Havil. | [SRR5602600](https://www.ncbi.nlm.nih.gov/sra/SRR5602600) | MiSeq | 2*300 | [KY085908.1](https://www.ncbi.nlm.nih.gov/nuccore/KY085908.1)
Lamiids | Lamiales | Gesneriaceae | *Haberlea rhodopensis* Friv. | [SRR4428742](https://www.ncbi.nlm.nih.gov/sra/SRR4428742) | HiSeq 2000 | 2*100 | [KX657870.1](https://www.ncbi.nlm.nih.gov/nuccore/KX657870.1)
Lamiids | Lamiales | Lamiaceae | *Scutellaria lateriflora* L. | [SRR5602584](https://www.ncbi.nlm.nih.gov/sra/SRR5602584) | MiSeq | 2*300 | [KY085900.1](https://www.ncbi.nlm.nih.gov/nuccore/KY085900.1)
Lamiids | Lamiales | Oleaceae | *Jasminum tortuosum* Willd. | [SRR5602601](https://www.ncbi.nlm.nih.gov/sra/SRR5602601) | MiSeq | 2*300 | [KY085898.1](https://www.ncbi.nlm.nih.gov/nuccore/KY085898.1)
Lamiids | Lamiales | Plantaginaceae | *Digitalis lanata* Ehrh. | [SRR5602573](https://www.ncbi.nlm.nih.gov/sra/SRR5602573) | MiSeq | 2*300 | [KY085895.1](https://www.ncbi.nlm.nih.gov/nuccore/KY085895.1)
Lamiids | Lamiales | Verbenaceae | *Aloysia citriodora* Palau | [SRR5602597](https://www.ncbi.nlm.nih.gov/sra/SRR5602597) | MiSeq | 2*300 | [KY085903.1](https://www.ncbi.nlm.nih.gov/nuccore/KY085903.1)
Lamiids | Solanales | Convolvulaceae | *Cuscuta campestris* Yunck. | [ERR1917165](https://www.ncbi.nlm.nih.gov/sra/ERR1917165) | MiSeq | 2*150 | [unpublished](http://www.plabipd.de/projects/Cuscuta_campestris/cuscuta_campestris_complete_chloroplast_r0-32.fasta.gz)

### 50 Fungal Datasets
Division | Class | Orders | Family | Species | SRA RunID | Read length (bp)
---------------- | ---------------- | ---------------- | ---------------- | ---------------- | ---------------- | ----------------
Ascomycota | Pezizomycetes | Pezizales | Morchellaceae | *Morchella eximia* | [SRR5804017](https://www.ncbi.nlm.nih.gov/sra/SRR5804017) | 2*150
Ascomycota | Pezizomycetes | Pezizales | Morchellaceae | *Morchella septimelata* | [SRR5804020](https://www.ncbi.nlm.nih.gov/sra/SRR5804020) | 2*150
Ascomycota | Pezizomycetes | Pezizales | Tuberaceae | *Tuber calosporum* | [SRR5804115](https://www.ncbi.nlm.nih.gov/sra/SRR5804115) | 2*150
Ascomycota | Pezizomycetes | Pezizales | Tuberaceae | *Tuber microsphaerosporum* | [SRR5804127](https://www.ncbi.nlm.nih.gov/sra/SRR5804127) | 2*150
Ascomycota | Pezizomycetes | Pezizales | Tuberaceae | *Tuber umbilicatum* | [SRR5804118](https://www.ncbi.nlm.nih.gov/sra/SRR5804118) | 2*150
Ascomycota | Pezizomycotina | Pezizales | Morchellaceae | *Morchella septimelata* | [SRR5804157](https://www.ncbi.nlm.nih.gov/sra/SRR5804157) | 2*150
Ascomycota | Sordariomycetes | Xylariales | Hypoxylaceae | *Annulohypoxylon stygiun* | [SRR5804137](https://www.ncbi.nlm.nih.gov/sra/SRR5804137) | 2*150
Basidiomycota | Agaricomycetes | Agaricales | Agaricaceae | *Coprinus comatus* | [SRR5804015](https://www.ncbi.nlm.nih.gov/sra/SRR5804015) | 2*150
Basidiomycota | Agaricomycetes | Agaricales | Agaricaceae | *Macrolepiota dolichaula* | [SRR5801935](https://www.ncbi.nlm.nih.gov/sra/SRR5801935) | 2*150
Basidiomycota | Agaricomycetes | Agaricales | Amanitaceae | *Amanita pseudoporphyria* | [SRR5804159](https://www.ncbi.nlm.nih.gov/sra/SRR5804159) | 2*150
Basidiomycota | Agaricomycetes | Agaricales | Bolbitiaceae | *Agrocybe cylindracea* | [SRR5801932](https://www.ncbi.nlm.nih.gov/sra/SRR5801932) | 2*150
Basidiomycota | Agaricomycetes | Agaricales | Catathelasmataceae | *Catathelasma ventricosum* | [SRR5802411](https://www.ncbi.nlm.nih.gov/sra/SRR5802411) | 2*150
Basidiomycota | Agaricomycetes | Agaricales | Hygrophoraceae | *Hygrophorus pudorinus* | [SRR5803922](https://www.ncbi.nlm.nih.gov/sra/SRR5803922) | 2*150
Basidiomycota | Agaricomycetes | Agaricales | Hygrophoraceae | *Hygrophorus russula* | [SRR5803933](https://www.ncbi.nlm.nih.gov/sra/SRR5803933) | 2*150
Basidiomycota | Agaricomycetes | Agaricales | Physalacriaceae | *Hymenopellis chiangmaiae* | [SRR5803905](https://www.ncbi.nlm.nih.gov/sra/SRR5803905) | 2*150
Basidiomycota | Agaricomycetes | Agaricales | Tricholomataceae | *Collybia* sp. | [SRR5802125](https://www.ncbi.nlm.nih.gov/sra/SRR5802125) | 2*150
Basidiomycota | Agaricomycetes | Agaricales | Tricholomataceae | *Megacollybia marginata* | [SRR5803926](https://www.ncbi.nlm.nih.gov/sra/SRR5803926) | 2*150
Basidiomycota | Agaricomycetes | Agaricales | Tricholomataceae | *Tricholoma terreum* | [SRR5802698](https://www.ncbi.nlm.nih.gov/sra/SRR5802698) | 2*150
Basidiomycota | Agaricomycetes | Agaricales | Tricholomataceae | *Tricoloma* sp. | [SRR5804112](https://www.ncbi.nlm.nih.gov/sra/SRR5804112) | 2*150
Basidiomycota | Agaricomycetes | Auriculariales | Auriculariaceae | *Auricularia polytricha* | [SRR5803923](https://www.ncbi.nlm.nih.gov/sra/SRR5803923) | 2*150
Basidiomycota | Agaricomycetes | Boletales | Boletaceae | *Boletus bicolor* | [SRR5754079](https://www.ncbi.nlm.nih.gov/sra/SRR5754079) | 2*150
Basidiomycota | Agaricomycetes | Boletales | Boletaceae | *Boletus edulis* | [SRR5764827](https://www.ncbi.nlm.nih.gov/sra/SRR5764827) | 2*150
Basidiomycota | Agaricomycetes | Boletales | Boletaceae | *Boletus* sp. | [SRR5803909](https://www.ncbi.nlm.nih.gov/sra/SRR5803909) | 2*150
Basidiomycota | Agaricomycetes | Boletales | Boletaceae | *Boletus* sp. | [SRR5804023](https://www.ncbi.nlm.nih.gov/sra/SRR5804023) | 2*150
Basidiomycota | Agaricomycetes | Boletales | Boletaceae | *Boletus speciosus* | [SRR5765276](https://www.ncbi.nlm.nih.gov/sra/SRR5765276) | 2*150
Basidiomycota | Agaricomycetes | Boletales | Boletaceae | *Boletus subvelutipes* | [SRR5801947](https://www.ncbi.nlm.nih.gov/sra/SRR5801947) | 2*150
Basidiomycota | Agaricomycetes | Boletales | Boletaceae | *Butyriboletus roseoflavus* | [SRR5802181](https://www.ncbi.nlm.nih.gov/sra/SRR5802181) | 2*150
Basidiomycota | Agaricomycetes | Boletales | Boletaceae | *Caloboletus calopus* | [SRR5801934](https://www.ncbi.nlm.nih.gov/sra/SRR5801934) | 2*150
Basidiomycota | Agaricomycetes | Boletales | Boletaceae | *Neoboletus brunneissimus* | [SRR5764829](https://www.ncbi.nlm.nih.gov/sra/SRR5764829) | 2*150
Basidiomycota | Agaricomycetes | Boletales | Boletaceae | *Neoboletus magnificus* | [SRR5801933](https://www.ncbi.nlm.nih.gov/sra/SRR5801933) | 2*150
Basidiomycota | Agaricomycetes | Boletales | Boletaceae | *Retiboletus ornatipes* | [SRR5802419](https://www.ncbi.nlm.nih.gov/sra/SRR5802419) | 2*150
Basidiomycota | Agaricomycetes | Boletales | Gomphidiaceae | *Chroogomphus rutilus* | [SRR5803916](https://www.ncbi.nlm.nih.gov/sra/SRR5803916) | 2*150
Basidiomycota | Agaricomycetes | Cantharellales | Cantharellaceae | *Cantharellus appalachiensis* | [SRR5802413](https://www.ncbi.nlm.nih.gov/sra/SRR5802413) | 2*150
Basidiomycota | Agaricomycetes | Cantharellales | Cantharellaceae | *Cantharellus cibarius* | [SRR5803930](https://www.ncbi.nlm.nih.gov/sra/SRR5803930) | 2*150
Basidiomycota | Agaricomycetes | Cantharellales | Cantharellaceae | *Craterellus lutescens* | [SRR5804147](https://www.ncbi.nlm.nih.gov/sra/SRR5804147) | 2*150
Basidiomycota | Agaricomycetes | Gomphales | Gomphaceae | *Gomphus bonarii* | [SRR5804153](https://www.ncbi.nlm.nih.gov/sra/SRR5804153) | 2*150
Basidiomycota | Agaricomycetes | Gomphales | Gomphaceae | *Gomphus* sp. | [SRR5803890](https://www.ncbi.nlm.nih.gov/sra/SRR5803890) | 2*150
Basidiomycota | Agaricomycetes | Polyporales | Grifolaceae | *Grifola frondosa* | [SRR5804018](https://www.ncbi.nlm.nih.gov/sra/SRR5804018) | 2*150
Basidiomycota | Agaricomycetes | Polyporales | Laetiporaceae | *Laetiporus sulphureus* | [SRR5804139](https://www.ncbi.nlm.nih.gov/sra/SRR5804139) | 2*150
Basidiomycota | Agaricomycetes | Russulales | Albatrellaceae | *Albatrellus ellisii* | [SRR5803913](https://www.ncbi.nlm.nih.gov/sra/SRR5803913) | 2*150
Basidiomycota | Agaricomycetes | Russulales | Albatrellaceae | *Albatrellus* sp. | [SRR5804145](https://www.ncbi.nlm.nih.gov/sra/SRR5804145) | 2*150
Basidiomycota | Agaricomycetes | Russulales | Russulaceae | *Lactarius deliciosus* | [SRR5765278](https://www.ncbi.nlm.nih.gov/sra/SRR5765278) | 2*150
Basidiomycota | Agaricomycetes | Russulales | Russulaceae | *Lactarius echinetus* | [SRR5804131](https://www.ncbi.nlm.nih.gov/sra/SRR5804131) | 2*150
Basidiomycota | Agaricomycetes | Russulales | Russulaceae | *Lactarius hatsudake* | [SRR5801929](https://www.ncbi.nlm.nih.gov/sra/SRR5801929) | 2*150
Basidiomycota | Agaricomycetes | Russulales | Russulaceae | *Lactarius indigo* | [SRR5804120](https://www.ncbi.nlm.nih.gov/sra/SRR5804120) | 2*150
Basidiomycota | Agaricomycetes | Russulales | Russulaceae | *Lactarius orange* | [SRR5804130](https://www.ncbi.nlm.nih.gov/sra/SRR5804130) | 2*150
Basidiomycota | Agaricomycetes | Russulales | Russulaceae | *Lactarius trivialis* | [SRR5803928](https://www.ncbi.nlm.nih.gov/sra/SRR5803928) | 2*150
Basidiomycota | Agaricomycetes | Russulales | Russulaceae | *Lactarius volemus* | [SRR5764835](https://www.ncbi.nlm.nih.gov/sra/SRR5764835) | 2*150
Basidiomycota | Agaricomycetes | Russulales | Russulaceae | *Lactifluus pinguis* | [SRR5801943](https://www.ncbi.nlm.nih.gov/sra/SRR5801943) | 2*150
Basidiomycota | Agaricomycetes | Russulales | Russulaceae | *Lactifluus rugatus* | [SRR5804119](https://www.ncbi.nlm.nih.gov/sra/SRR5804119) | 2*150

### 56 Animal Datasets

The same as samples used in [MitoZ paper](https://academic.oup.com/nar/article/47/11/e63/5377471#supplementary-data).

Phylum | Class | Order | Family | Species | SRA Run ID | Read length (bp)
---------------- | ---------------- | ---------------- | ---------------- | ---------------- | ---------------- | ----------------
Arthropoda | Arachnida | Astigmata | Pyroglyphidae | *Dermatophagoides farinae* | [SRR3098386](https://www.ncbi.nlm.nih.gov/sra/SRR3098386) | 2*95
Arthropoda | Arachnida | Astigmata | Pyroglyphidae | *Dermatophagoides pteronyssinus* | [SRR5863004](https://www.ncbi.nlm.nih.gov/sra/SRR5863004) | 2*300
Arthropoda | Arachnida | Trombidiformes | Tetranychidae | *Tetranychus urticae* | [SRR1284940](https://www.ncbi.nlm.nih.gov/sra/SRR1284940) | 2*100
Arthropoda | Branchiopoda | Diplostraca | Daphniidae | *Daphnia magna* | [SRR4340274](https://www.ncbi.nlm.nih.gov/sra/SRR4340274) | 2*100
Arthropoda | Branchiopoda | Diplostraca | Daphniidae | *Daphnia pulex* | [SRR5875655](https://www.ncbi.nlm.nih.gov/sra/SRR5875655) | 2*100
Arthropoda | Branchiopoda | Notostraca | Triopsidae | *Triops cancriformis* | [SRR4782254](https://www.ncbi.nlm.nih.gov/sra/SRR4782254) | 2*265
Arthropoda | Chilopoda | Geophilomorpha | Linotaeniidae | *Strigamia maritima* | [SRR941879](https://www.ncbi.nlm.nih.gov/sra/SRR941879) | 2*95
Arthropoda | Insecta | Blattodea | Ectobiidae | *Blattella germanica* | [SRR1566160](https://www.ncbi.nlm.nih.gov/sra/SRR1566160) | 2*100
Arthropoda | Insecta | Diptera | Calliphoridae | *Lucilia cuprina* | [SRR1200276](https://www.ncbi.nlm.nih.gov/sra/SRR1200276) | 2*100
Arthropoda | Insecta | Diptera | Cecidomyiidae | *Mayetiola destructor* | [SRR136494](https://www.ncbi.nlm.nih.gov/sra/SRR136494) | 2*95
Arthropoda | Insecta | Diptera | Culicidae | *Anopheles funestus* | [SRR1055280](https://www.ncbi.nlm.nih.gov/sra/SRR1055280) | 2*100
Arthropoda | Insecta | Diptera | Culicidae | *Anopheles gambiae* | [ERR1952738](https://www.ncbi.nlm.nih.gov/sra/ERR1952738) | 2*150
Arthropoda | Insecta | Diptera | Drosophilidae | *Drosophila sechellia* | [SRR5860573](https://www.ncbi.nlm.nih.gov/sra/SRR5860573) | 2*150
Arthropoda | Insecta | Diptera | Drosophilidae | *Drosophila simulans* | [SRR2132981](https://www.ncbi.nlm.nih.gov/sra/SRR2132981) | 2*100
Arthropoda | Insecta | Diptera | Drosophilidae | *Drosophila yakuba* | [SRR2318706](https://www.ncbi.nlm.nih.gov/sra/SRR2318706) | 2*100
Arthropoda | Insecta | Diptera | Tephritidae | *Ceratitis capitata* | [SRR847379](https://www.ncbi.nlm.nih.gov/sra/SRR847379) | 2*100
Arthropoda | Insecta | Hemiptera | Aphalaridae | *Pachypsylla venusta* | [SRR940268](https://www.ncbi.nlm.nih.gov/sra/SRR940268) | 2*100
Arthropoda | Insecta | Hemiptera | Pentatomidae | *Halyomorpha halys* | [SRR1298377](https://www.ncbi.nlm.nih.gov/sra/SRR1298377) | 2*100
Arthropoda | Insecta | Hymenoptera | Apidae | *Apis cerana* | [DRR095708](https://www.ncbi.nlm.nih.gov/sra/DRR095708) | 2*100
Arthropoda | Insecta | Hymenoptera | Cephidae | *Cephus cinctus* | [SRR1946581](https://www.ncbi.nlm.nih.gov/sra/SRR1946581) | 2*125
Arthropoda | Insecta | Hymenoptera | Formicidae | *Solenopsis invicta* | [SRR620242](https://www.ncbi.nlm.nih.gov/sra/SRR620242) | 2*100
Arthropoda | Insecta | Lepidoptera | Crambidae | *Chilo suppressalis* | [SRR611174](https://www.ncbi.nlm.nih.gov/sra/SRR611174) | 2*100
Arthropoda | Insecta | Lepidoptera | Noctuidae | *Spodoptera litura* | [SRR5132384](https://www.ncbi.nlm.nih.gov/sra/SRR5132384) | 2*100
Arthropoda | Insecta | Lepidoptera | Pieridae | *Pieris rapae* | [SRR4339879](https://www.ncbi.nlm.nih.gov/sra/SRR4339879) | 2*150
Arthropoda | Insecta | Orthoptera | Acrididae | *Locusta migratoria* | [SRR3953043](https://www.ncbi.nlm.nih.gov/sra/SRR3953043) | 2*125
Arthropoda | Insecta | Thysanoptera | Thripidae | *Frankliniella occidentalis* | [SRR1300141](https://www.ncbi.nlm.nih.gov/sra/SRR1300141) | 2*100
Arthropoda | Malacostraca | Decapoda | Penaeidae | *Marsupenaeus japonicus* | [SRR2179962](https://www.ncbi.nlm.nih.gov/sra/SRR2179962) | 2*100
Arthropoda | Malacostraca | Decapoda | Penaeidae | *Penaeus monodon* | [SRR5620467](https://www.ncbi.nlm.nih.gov/sra/SRR5620467) | 2*150
Arthropoda | Maxillopoda | Siphonostomatoida | Caligidae | *Lepeophtheirus salmonis* | [SRR1950515](https://www.ncbi.nlm.nih.gov/sra/SRR1950515) | 2*100
Arthropoda | Merostomata | Xiphosura | Limulidae | *Limulus polyphemus* | [SRR3879971](https://www.ncbi.nlm.nih.gov/sra/SRR3879971) | 2*100
Chordata | Mammalia | Carnivora | Ailuridae | *Ailurus fulgens* | [SRR2730309](https://www.ncbi.nlm.nih.gov/sra/SRR2730309) | 2*100
Chordata | Mammalia | Carnivora | Canidae | *Canis lupus familiaris* | [ERR466754](https://www.ncbi.nlm.nih.gov/sra/ERR466754) | 2*100
Chordata | Mammalia | Carnivora | Felidae | *Acinonyx jubatus* | [SRR2737540](https://www.ncbi.nlm.nih.gov/sra/SRR2737540) | 2*100
Chordata | Mammalia | Carnivora | Felidae | *Panthera pardus* | [SRR3041429](https://www.ncbi.nlm.nih.gov/sra/SRR3041429) | 2*100
Chordata | Mammalia | Carnivora | Felidae | *Panthera tigris* | [SRR836315](https://www.ncbi.nlm.nih.gov/sra/SRR836315) | 2*100
Chordata | Mammalia | Carnivora | Ursidae | *Ailuropoda melanoleuca* | [SRR2717571](https://www.ncbi.nlm.nih.gov/sra/SRR2717571) | 2*100
Chordata | Mammalia | Carnivora | Ursidae | *Ursus arctos* | [SRR5878339](https://www.ncbi.nlm.nih.gov/sra/SRR5878339) | 2*100
Chordata | Mammalia | Cetacea | Balaenopteridae | *Balaenoptera bonaerensis* | [DRR014695](https://www.ncbi.nlm.nih.gov/sra/DRR014695) | 2*100
Chordata | Mammalia | Cetacea | Eschrichtiidae | *Eschrichtius robustus* | [SRR5495100](https://www.ncbi.nlm.nih.gov/sra/SRR5495100) | 2*100
Chordata | Mammalia | Chiroptera | Vespertilionidae | *Myotis lucifugus* | [SRR5769010](https://www.ncbi.nlm.nih.gov/sra/SRR5769010) | 2*120
Chordata | Mammalia | Lagomorpha | Leporidae | *Oryctolagus cuniculus* | [SRR5056303](https://www.ncbi.nlm.nih.gov/sra/SRR5056303) | 2*100
Chordata | Mammalia | Laurasiatheria | Camelidae | *Vicugna pacos* | [SRR4095109](https://www.ncbi.nlm.nih.gov/sra/SRR4095109) | 2*100
Chordata | Mammalia | Laurasiatheria | Cervidae | *Cervus elaphus* | [SRR955308](https://www.ncbi.nlm.nih.gov/sra/SRR955308) | 2*100
Chordata | Mammalia | Laurasiatheria | Suidae | *Sus scrofa* | [SRR1581065](https://www.ncbi.nlm.nih.gov/sra/SRR1581065) | 2*100
Chordata | Mammalia | Primates | Cercopithecidae | *Chlorocebus sabaeus* | [SRR1822107](https://www.ncbi.nlm.nih.gov/sra/SRR1822107) | 2*100
Chordata | Mammalia | Primates | Cercopithecidae | *Rhinopithecus bieti* | [SRR1041081](https://www.ncbi.nlm.nih.gov/sra/SRR1041081) | 2*100
Chordata | Mammalia | Primates | Cercopithecidae | *Rhinopithecus roxellana* | [SRR1743021](https://www.ncbi.nlm.nih.gov/sra/SRR1743021) | 2*100
Chordata | Mammalia | Primates | Daubentoniidae | *Daubentonia madagascariensis* | [SRR329682](https://www.ncbi.nlm.nih.gov/sra/SRR329682) | 2*100
Chordata | Mammalia | Primates | Hominidae | *Homo sapiens* | [SRR039541](https://www.ncbi.nlm.nih.gov/sra/SRR039541) | 2*100
Chordata | Mammalia | Primates | Hominidae | *Pan paniscus* | [SRR747928](https://www.ncbi.nlm.nih.gov/sra/SRR747928) | 2*100
Chordata | Mammalia | Primates | Hominidae | *Pongo abelii* | [SRR748049](https://www.ncbi.nlm.nih.gov/sra/SRR748049) | 2*100
Chordata | Mammalia | Primates | Indriidae | *Propithecus coquereli* | [SRR1657027](https://www.ncbi.nlm.nih.gov/sra/SRR1657027) | 2*100
Chordata | Mammalia | Rodentia | Cricetidae | *Myodes glareolus* | [SRR5201683](https://www.ncbi.nlm.nih.gov/sra/SRR5201683) | 2*100
Chordata | Mammalia | Rodentia | Muridae | *Meriones unguiculatus* | [SRR5527082](https://www.ncbi.nlm.nih.gov/sra/SRR5527082) | 2*150
Chordata | Mammalia | Rodentia | Muridae | *Mus musculus* | [ERR1856354](https://www.ncbi.nlm.nih.gov/sra/ERR1856354) | 2*100
Chordata | Mammalia | Rodentia | Sciuridae | Ictidomys tridecemlineatus | [SRR305235](https://www.ncbi.nlm.nih.gov/sra/SRR305235) | 2*100
