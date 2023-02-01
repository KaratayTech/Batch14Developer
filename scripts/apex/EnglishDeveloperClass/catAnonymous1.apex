// normald world
// we can create new instance without any parameters even if we DON'T have any constructor.
// if we don't have any constructor, we can create new instance
Cat sfCat = new Cat();
sfCat.name = 'cinnamon';
sfCat.color = 'brown';
sfCat.gender = 'male';
system.debug(sfCat);


cat c2 = new cat('duman', 'dark gray','male');
system.debug(c2);

cat c3 = new cat('fluffykins');