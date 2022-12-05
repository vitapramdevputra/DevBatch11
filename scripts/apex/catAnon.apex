//NORMAL WORLD
//if we DO NOT HAVE any constructor then this works.
//or if we have parameterless constructor then this works.
Cat sfCat = new Cat(); 
sfCat.name = 'Leo';
sfCat.color = 'white';
system.debug('sfcat --> ' + sfCat);

string catName = 'Leo';

Cat sfCat2 = new Cat('Leo', 'Orange');
Cat sfCat3 = new Cat('Luna', 'Brown');
Cat batch11Cat = new Cat('fluffykins', 'white');
system.debug('batch11 cat is ' + batch11Cat);