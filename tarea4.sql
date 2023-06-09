DROP DATABASE IF EXISTS Sephora;

CREATE DATABASE Sephora;

USE Sephora;

DROP TABLE IF EXISTS Product;
CREATE TABLE Product (
product_id CHAR(50) PRIMARY KEY,
product_name CHAR(100),
sizee CHAR(15),
neew BINARY,
ingredients BLOB(500),
child_count INT,
limited_edition BINARY,
price_usd FLOAT
);

DROP TABLE IF EXISTS Online_store;
CREATE TABLE Online_store (
product_id CHAR(50),
brand_id CHAR(4),
brand_name CHAR(25),
out_of_stock BINARY,
primary_category CHAR(15),
secondary_category CHAR(30),
tertiary_category CHAR(30),
sephora_exclusive BINARY
);

DROP TABLE IF EXISTS Post;
CREATE TABLE Post (
product_id CHAR(50),
loves_count INT,
rating FLOAT,
reviews INT
);

INSERT INTO Product (product_id, product_name, sizee, neew, ingredients, child_count, limited_edition, price_usd) VALUES
('P483139','The Cape Perfume','1.7 oz / 50 mL',0,"['Water, Denatured Ethyl Alcohol, Fragrance, (3r,3as,6s,7r,8as)-6-Methoxy-3,6,8,8-Tetramethyloctahydro-1h-3a,7-Methanoazulene, 2,6-Dimethyl-7-Octen-2-Ol, 2-T-Butylcyclohexyl Acetate, 6,6-Dimethoxy-2,5,5-Trimethylhex-2-Ene, Butylphenyl Methylpropional, Citronellol, Citrus Aurantium Dulcis (Orange) Peel Oil, Citrus Limon (Lemon) Peel Oil, Dihydro Pentamethylindanone, Dipropylene Glycol, Isobutyl Methyl Tetrahydropyranol, Linalool, Linalyl Acetate, Methyldihydrojasmonate, Methylenedioxyphenyl Methylpropanal, Pentadecalactone, Tetramethyl Acetyloctahydronaphthalenes, Vetiveria Zizanoides Root Oil.']",1,0,84),
('P473668','La Habana Eau de Parfum','3.4 oz/ 100 mL',0,"[Alcohol Denat. (SD Alcohol 39C), Parfum (Fragrance) Ethylhexyl Methoxycinnamate, Ethylhexyl Salicylate, Butyl Methoxydibenzoylmethane, Benzyl Alcohol, Benzyl Benzoate, Benzyl Cinnamate, Cinnamal, Citral, Coumarin Limonene, Eugenol, Alpha-Isomethyl Ionone, Linalool.']",2,0,195),
('P473662','Rainbow Bar Eau de Parfum','3.4 oz/ 100 mL',0,"['Alcohol Denat. (SD Alcohol 39C), Parfum (Fragrance) D-Limonene, Ethylhexyl Methoxycinnamate, Butyl Methoxydibenzoylmethane, Ethylhexyl Salicylate, Hexyl Cinnamal Citronellol, Linalool, Coumarin, Eugenol, Citral, Isoeugenol, Geraniol.']",2,0,195),
('P473660','Kasbah Eau de Parfum','3.4 oz/ 100 mL',0,"['Alcohol Denat. (SD Alcohol 39C), Parfum (Fragrance) Coumarin, Ethylhexyl Methoxycinnamate, Butyl Methoxydibenzoylmethane, Ethylhexyl Salicylate, D-Limonene, Eugenol, Linalool, Citronellol, Geraniol, Cinnamal, Citral.']",2,0,195),
('P473658','Purple Haze Eau de Parfum','3.4 oz/ 100 mL',0,"['Alcohol Denat. (SD Alcohol 39C), Parfum (Fragrance) Octoxynol-10, D-Limonene, Ethylhexyl Methoxycinnamate, Butyl Methoxydibenzoylmethane, Ethylhexyl Salicylate, Geraniol, Linalool, Coumarin, Farnesol, Eugenol, Citral.']",2,0,195),
('P473661','Kasbah Eau de Parfum Travel Spray','0.25 oz/ 7.5 mL',0,"['Alcohol Denat. (SD Alcohol 39C), Parfum (Fragrance) Coumarin, Ethylhexyl Methoxycinnamate,', 'Butyl Methoxydibenzoylmethane, Ethylhexyl Salicylate, D-Limonene, Eugenol, Linalool, Citronellol, Geraniol, Cinnamal, Citral.']",0,0,30),
('P473659','Purple Haze Eau de Parfum Travel Spray','0.25 oz/ 7.5 mL',0,"['Alcohol Denat. (SD Alcohol 39C), Parfum (Fragrance) Octoxynol-10, D-Limonene, Ethylhexyl Methoxycinnamate, Butyl Methoxydibenzoylmethane, Ethylhexyl Salicylate, Geraniol, Linalool, Coumarin, Farnesol, Eugenol, Citral.']",0,0,30),
('P473666','Invisible Post Eau de Parfum','3.4 oz/ 100 mL',0,"['Alcohol Denat. (SD Alcohol 39C), Parfum (Fragrance) Ethylhexyl Methoxycinnamate, Ethylhexyl Salicylate, Butyl Methoxydibenzoylmethane, Benzyl Benzoate, Citral, Coumarin, Limonene, Alpha-Isomethyl Ionone, Linalool.']",2,0,195),
('P472300','Capri Eau de Parfum','3.4 oz/ 100 mL',0,"['Alcohol Denat. (SD Alcohol 39C), Parfum (Fragrance) D-Limonene, Linalool, Benzyl Salicylate, Ethylhexyl Methoxycinnamate, Butyl Methoxydibenzoylmethane, Ethylhexyl Salicylate,', 'Benzl Benzoate, Citral, Geraniol, Eugenol, Benzyl Alcohol, Farnesol, Citronellol, Isoeugenol.']",2,0,195),
('P473667','Invisible Post Eau de Parfum Travel Spray','0.25 oz/ 7.5 mL',0,"['Alcohol Denat. (SD Alcohol 39C), Parfum (Fragrance) Ethylhexyl Methoxycinnamate, Ethylhexyl Salicylate, Butyl Methoxydibenzoylmethane, Benzyl Benzoate, Citral, Coumarin, Limonene, Alpha-Isomethyl Ionone, Linalool.']",0,0,30),
('P473663','Rainbow Bar Eau de Parfum Travel Spray','0.25 oz/ 7.5 mL',0,"['Alcohol Denat. (SD Alcohol 39C), Parfum (Fragrance) D-Limonene, Ethylhexyl Methoxycinnamate, Butyl Methoxydibenzoylmethane, Ethylhexyl Salicylate, Hexyl Cinnamal Citronellol, Linalool, Coumarin, Eugenol, Citral, Isoeugenol, Geraniol.']",0,0,30),
('P473670','Capri Eau de Parfum Travel Spray','0.25 oz/ 7.5 mL',0,"['Alcohol Denat. (SD Alcohol 39C), Parfum (Fragrance) D-Limonene, Linalool, Benzyl Salicylate,  Ethylhexyl Methoxycinnamate, Butyl Methoxydibenzoylmethane, Ethylhexyl Salicylate,', 'Benzl Benzoate, Citral, Geraniol, Eugenol, Benzyl Alcohol, Farnesol, Citronellol, Isoeugenol.']",0,0,30),
('P473664','Lair Barbes Eau de Parfum','3.4 oz/ 100 mL',0,"[Alcohol Denat. (SD Alcohol 39C), Parfum (Fragrance) Benzyl Salicylate, D-Limonene, Ethylhexyl Methoxycinnamate, Butyl Methoxydibenzoylmethane, Ethylhexyl Salicylate, Linalool Citral, Alphaisomethyl Ionone, Benzyl Benzoate, Geraniol Farnesol, Isoeugenol, Eugenol.]",2,0,195),
('P473665','Lair Barbes Eau de Parfum Travel Spray','0.25 oz/ 7.5 mL',0,"[Alcohol Denat. (SD Alcohol 39C), Parfum (Fragrance) Benzyl Salicylate, D-Limonene, Ethylhexyl Methoxycinnamate, Butyl Methoxydibenzoylmethane, Ethylhexyl Salicylate, Linalool Citral, Alphaisomethyl Ionone, Benzyl Benzoate, Geraniol Farnesol, Isoeugenol, Eugenol.]",0,0,30),
('P476416','AFRICAN Beauty Butter- Intensive Dry Skin Treatment','6 oz / 180 mL',0,"['Butyrospermum Parkii (Shea Nilotica) Butter, Butyrospermum Parkii (Shea) Butter, Simmondsia Chinensis (Jojoba) Seed Oil, Adansonia Digitata (Baobab) Oil, Prunus Amygdalus Dulcis (Sweet Almond) Oil, Vitis Vinifera (Grape) Seed Oil, Persea gratissima (Avocado) Oil, Cocos nucifera (Coconut) oil, Vanilla Planifolia (Vanilla) Fruit Extract, Honey, *Tocopherol (mixed), *Beta-Sitosterol, *Squalane.']",10,0,38),
('P476418','African Beauty Butter Mini Gift Set','',0,"['Egyptian Lavender + Moroccan Mint:', 'Butyrospermum Parkii (Shea Nilotica) Butter, Butyrospermum Parkii (Shea) Butter, Simmondsia Chinensis (Jojoba) Seed Oil, Adansonia Digitata (Baobab) Oil, Prunus Amygdalus Dulcis (Sweet Almond) Oil, Vitis Vinifera (Grape) Seed Oil, Persea Gratissima (Avocado) Oil, Lavandula Angustifolia (Lavender) Flower Oil, Mentha Piperita (Peppermint) Oil, *Tocopherol (Mixed), *Beta-Sitosterol, *Squalane.', 'Kenyan Hibiscus + Moroccan Rose:', 'Butyrospermum Parkii (Shea Nilotica) Butter, Butyrospermum Parkii (Shea) Butter, Simmondsia Chinensis (Jojoba) Seed Oil, Adansonia Digitata (Baobab) Oil, Prunus Amygdalus Dulcis (Sweet Almond) Oil, Vitis Vinifera (Grape) Seed Oil, Persea Gratissima (Avocado) Oil, Cocos Nucifera (Coconut) Oil, (Rose Absolute), Hibiscus Sabdariffa (Hibiscus) Seed Oil, *Tocopherol (Mixed), *Beta-Sitosterol, *Squalane.', 'Ugandan Vanilla + Ethiopian Honey:', 'Butyrospermum Parkii (Shea Nilotica) Butter, Butyrospermum Parkii (Shea) Butter, Simmondsia Chinensis (Jojoba) Seed Oil, Adansonia Digitata (Baobab) Oil, Prunus Amygdalus Dulcis (Sweet Almond) Oil, Vitis Vinifera (Grape) Seed Oil, Persea Gratissima (Avocado) Oil, Cocos Nucifera (Coconut) Oil, Vanilla Planifolia (Vanilla) Fruit Extract, Honey, *Tocopherol (Mixed), *Beta-Sitosterol, *Squalane.']",0,0,29),
('P476417','African Beauty Butter Collection Deluxe Tin','',0,"['Egyptian Lavender + Moroccan Mint:', 'Butyrospermum Parkii (Shea Nilotica) Butter, Butyrospermum Parkii (Shea) Butter, Simmondsia Chinensis (Jojoba) Seed Oil, Adansonia Digitata (Baobab) Oil, Prunus Amygdalus Dulcis (Sweet Almond) Oil, Vitis Vinifera (Grape) Seed Oil, Persea Gratissima (Avocado) Oil, Lavandula Angustifolia (Lavender) Flower Oil, Mentha Piperita (Peppermint) Oil, *Tocopherol (Mixed), *Beta-Sitosterol, *Squalane.', 'Kenyan Hibiscus + Moroccan Rose:', 'Butyrospermum Parkii (Shea Nilotica) Butter, Butyrospermum Parkii (Shea) Butter, Simmondsia Chinensis (Jojoba) Seed Oil, Adansonia Digitata (Baobab) Oil, Prunus Amygdalus Dulcis (Sweet Almond) Oil, Vitis Vinifera (Grape) Seed Oil, Persea Gratissima (Avocado) Oil, Cocos Nucifera (Coconut) Oil, (Rose Absolute), Hibiscus Sabdariffa (Hibiscus) Seed Oil, *Tocopherol (Mixed), *Beta-Sitosterol, *Squalane.', 'Nigerian Lemongrass + South African Palmarosa:', 'Butyrospermum Parkii (Shea Nilotica) Butter, Butyrospermum Parkii (Shea) Butter, Simmondsia Chinensis (Jojoba) Seed Oil, Adansonia Digitata (Baobab) Oil, Prunus Amygdalus Dulcis (Sweet Almond) Oil, Vitis Vinifera (Grape) Seed Oil, Persea Gratissima (Avocado) Oil, Cymbopogon Schoenanthus (Lemongrass) Oil, Cymbopogon Martini (Palmarosa) Oil, *Tocopherol (Mixed), *Beta-Sitosterol, **Squalane.', 'Moroccan Blue Tansy + Egyptian Blue Chamomile:', 'Butyrospermum Parkii (Shea Nilotica) Butter, Butyrospermum Parkii (Shea) Butter, Simmondsia Chinensis (Jojoba) Seed Oil, Adansonia Digitata (Baobab) Oil, Prunus Amygdalus Dulcis (Sweet Almond) Oil, Vitis Vinifera (Grape) Seed Oil, Persea Gratissima (Avocado) Oil, Tanacetum Annum (Tansy) Essential Oil, Matricaria Recutita (Blue Chamomile Flower) Oil, *Tocopherol (Mixed), *Beta-Sitosterol, *Squalane.', 'Ugandan Vanilla + Ethiopian Honey:', 'Butyrospermum Parkii (Shea Nilotica) Butter, Butyrospermum Parkii (Shea) Butter, Simmondsia Chinensis (Jojoba) Seed Oil, Adansonia Digitata (Baobab) Oil, Prunus Amygdalus Dulcis (Sweet Almond) Oil, Vitis Vinifera (Grape) Seed Oil, Persea Gratissima (Avocado) Oil, Cocos Nucifera (Coconut) Oil, Vanilla Planifolia (Vanilla) Fruit Extract, Honey, *Tocopherol (Mixed), *Beta-Sitosterol, *Squalane.']",0,0,80),
('P503832','Mini AFRICAN Beauty Butter- Intensive Dry Skin Treatment','1 oz / 30 mL',1,"['Butyrospermum Parkii (Shea Nilotica) Butter, Butyrospermum Parkii (Shea) Butter, Simmondsia Chinensis (Jojoba) Seed Oil, Adansonia Digitata (Baobab) Oil, Prunus Amygdalus Dulcis (Sweet Almond) Oil, Vitis Vinifera (Grape) Seed Oil, Persea Gratissima (Avocado) Oil, Cocos Nucifera (Coconut) Oil, Vanilla Planifolia (Vanilla) Fruit Extract, Honey, *Tocopherol (Mixed), *Beta-Sitosterol, *Squalane.']",2,0,12),
('P483068','ABBOTT Sampler Set','',0,"['Big Sky:', 'Water, Denatured Ethyl Alcohol, Fragrance, 1-(2,2,6-Trimethylcyclohexyl)Hexan-3-Ol, 4-(1-Ethoxyethenyl)-3,3,5,5-Tetramethylcyclohexan-1-One, Cedrus Atlantica Wood Oil, Dihydro Pentamethylindanone, Dipropylene Glycol, Ethylene Brassylate, Tetramethyl Acetyloctahydronaphthalenes.', 'Crescent Beach:', 'Water, Denatured Ethyl Alcohol, Fragrance, (10z)-1-Oxacycloheptadec-10-En-2-One, 1-Methyl-4-(4-Methylpent-3-Enyl)Cyclohex-3-Ene-1-Carbaldehyde, 2,4-Dimethyl-4,4a,5,9b-Tetrahydroindeno[1,2-D][1,3]Dioxine, Alpha-Isomethyl Ionone, Cyclamen Aldehyde, Dihydro Pentamethylindanone, Dimethylcyclohexylethoxy Isobutylpropanoate, Ethyl Linalool, Ethylene Brassylate, Ethylene Dodecanedioate, Isobutyl Methyl Tetrahydropyranol, Methyldihydrojasmonate, Methylenedioxyphenyl Methylpropanal, Phenethyl Alcohol.', 'Mojave:', 'Water, Denatured Ethyl Alcohol, Fragrance, (3r,3as,6s,7r,8as)-6-Methoxy-3,6,8,8-Tetramethyloctahydro-1h-3a,7-Methanoazulene, 1-(2,2,6-Trimethylcyclohexyl)Hexan-3-Ol, 6,6-Dimethoxy-2,5,5-Trimethylhex-2-Ene, Boswellia Carterii Oil, Canarium Luzonicum Gum Nonvolatiles, Citrus Aurantium Bergamia (Bergamot) Peel Oil, Citrus Limon (Lemon) Peel Oil, Dipropylene Glycol, Ethylene Brassylate, Juniperus Virginiana Wood Oil, Methyldihydrojasmonate, Piper Nigrum (Pepper) Fruit Oil, Tetramethyl Acetyloctahydronaphthalenes Dihydro Pentamethylindanone, Dipropylene Glycol, Ethylene Brassylate, Limonene, Linalyl Acetate, Methyldihydrojasmonate, Methylenedioxyphenyl Methylpropanal, Tetramethyl Acetyloctahydronaphthalenes.', 'Montecito:', 'Water, Denatured Ethyl Alcohol, Fragrance, (10z)-1-Oxacycloheptadec-10-En-2-One, (3r,3as,6s,7r,8as)-6-Methoxy-3,6,8,8-Tetramethyloctahydro-1h-3a,7-Methanoazulene, 1-(2,2,6-Trimethylcyclohexyl)Hexan-3-Ol, 4-(1-Ethoxyethenyl)-3,3,5,5-Tetramethylcyclohexan-1-One, 6,6-Dimethoxy-2,5,5-Trimethylhex-2-Ene, Citrus Aurantium Bergamia (Bergamot) Peel Oil, Citrus Nobilis (Mandarin Orange) Peel Oil, Citrus Paradisi (Grapefruit) Peel Oil, Dihydro Pentamethylindanone, Dipropylene Glycol, Ethylene Brassylate, Limonene, Linalyl Acetate, Methyldihydrojasmonate, Methylenedioxyphenyl Methylpropanal, Tetramethyl Acetyloctahydronaphthalenes.', 'Sequoia:', 'Water, Denatured Ethyl Alcohol, Fragrance, (3r-(3a,3ab,7b,8aa))-1-(2,3,4,7,8,8a-Hexahydro-3,6,8,8-Tetramethyl-1h-3a,7-Methanoazulen-5-Yl)Ethan-1-One, (4e)-3-Methyl-5-(2,2,3-Trimethylcyclopent-3-En-1-Yl)Pent-4-En-2-Ol, (Ethoxymethoxy)Cyclododecane, Juniperus Virginiana Wood Oil, Dihydro Pentamethylindanone, Dipropylene Glycol, Ethylene Brassylate, Linalyl Acetate, Methoxytrimethylheptanol, Methyldihydrojasmonate, Tetramethyl Acetyloctahydronaphthalenes, Trimethylcyclopentenyl Dimethylisopentenol.', 'The Cape:', 'Water, Denatured Ethyl Alcohol, Fragrance, (3r,3as,6s,7r,8as)-6-Methoxy-3,6,8,8-Tetramethyloctahydro-1h-3a,7-Methanoazulene, 2,6-Dimethyl-7-Octen-2-Ol, 2-T-Butylcyclohexyl Acetate, 6,6-Dimethoxy-2,5,5-Trimethylhex-2-Ene, Butylphenyl Methylpropional, Citronellol, Citrus Aurantium Dulcis (Orange) Peel Oil, Citrus Limon (Lemon) Peel Oil, Dihydro Pentamethylindanone, Dipropylene Glycol, Isobutyl Methyl Tetrahydropyranol, Linalool, Linalyl Acetate, Methyldihydrojasmonate, Methylenedioxyphenyl Methylpropanal, Pentadecalactone, Tetramethyl Acetyloctahydronaphthalenes, Vetiveria Zizanoides Root Oil.']",0,0,26)
;

INSERT INTO Online_store (product_id, brand_id, brand_name, out_of_stock, primary_category, secondary_category, tertiary_category, sephora_exclusive) VALUES
('P483139',6485,'ABBOTT',0,'Fragrance','Women','Perfume',0),
('P473668',6342,'19-69',0,'Fragrance','Women','Perfume',0),
('P473662',6342,'19-69',0,'Fragrance','Women','Perfume',0),
('P473660',6342,'19-69',0,'Fragrance','Women','Perfume',0),
('P473658',6342,'19-69',0,'Fragrance','Women','Perfume',0),
('P473661',6342,'19-69',0,'Fragrance','Women','Rollerballs & Travel Size',0),
('P473659',6342,'19-69',0,'Fragrance','Women','Rollerballs & Travel Size',0),
('P473666',6342,'19-69',0,'Fragrance','Women','Perfume',0),
('P472300',6342,'19-69',0,'Fragrance','Women','Perfume',0),
('P473667',6342,'19-69',0,'Fragrance','Women','Rollerballs & Travel Size',0),
('P473663',6342,'19-69',0,'Fragrance','Women','Rollerballs & Travel Size',0),
('P473670',6342,'19-69',0,'Fragrance','Women','Rollerballs & Travel Size',0),
('P473664',6342,'19-69',0,'Fragrance','Women','Perfume',0),
('P473665',6342,'19-69',0,'Fragrance','Women','Rollerballs & Travel Size',0),
('P476416',6471,'54 Thrones',0,'Bath & Body','Body Moisturizers','Body Lotions & Body Oils',0),
('P476418',6471,'54 Thrones',1,'Bath & Body','Value & Gift Sets','',1),
('P476417',6471,'54 Thrones',0,'Bath & Body','Value & Gift Sets','',0),
('P503832',6471,'54 Thrones',1,'Bath & Body','Body Moisturizers','Body Lotions & Body Oils',0),
('P483068',6485,'ABBOTT',1,'Fragrance','Value & Gift Sets','Perfume Gift Sets',0)
;

INSERT INTO Post (product_id, loves_count, rating, reviews) VALUES
('P483139',3118,4.6111,18),
('P473668',3827,4.1538,13),
('P473662',3253,4.25,16),
('P473660',3018,4.4762,21),
('P473658',2691,3.2308,13),
('P473661',2448,4.4762,21),
('P473659',1619,3.2308,13),
('P473666',1542,3.625,8),
('P472300',1542,3.5714,7),
('P473667',1377,3.625,8),
('P473663',1371,4.25,16),
('P473670',1206,3.5714,7),
('P473664',981,3,4),
('P473665',721,3,4),
('P476416',19028,4.3256,258),
('P476418',7526,3.561,41),
('P476417',3741,4.2273,22),
('P503832',3392,4.5175,143),
('P483068',4493,4.8163,49)
;

