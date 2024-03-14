## 03-14-2024 - Maria Kennedy
# This is the original file of a previous OOP assignment in Python from comp 1900
# Rewrote code in ruby and renamed files as oop_animal_class.rb and oop_animal_class_spec.rb
# Added additional methods and attributes to the new ruby code as the original assignment was very basic
# Also...I use a lot of fictional characters and silly names that I call my dog, Luna, in my code..sorry if they don't make much sense
'''
OBJECT ORIENTED PROG (OOP)
class-descrp/'blueprint'					object: luna = animal(..., ..., ...)
_________________							_________________
|	Animals		|	class 					|Luna the Sloth	|
|_______________|							|_______________|	at beginning keep data as small as possible
|species		|\.	instance				|species:		|
|weight			|   attributes				|	'sloth pug'	|	instanciation
|diet			| / (data/state)			|weight:		|
|_______________|/							|	'25'		|
|eat			|\.							|diet:			|
|sleep			| methods/functions			|  'boofin snak'|
|move			|/ (actions)				|_______________|
|_______________|

2-8-23 examples
if x = 5, then x is an int
x becomes an object of int
if you type "x." into an IDE, you can see all of the methods associated with the built in class integer
the same is true if you assign x to a string
'''

class Animal:

	# Constructor defines attributes that make up class
	def __init__(self, s, w, d):
		self.species = s
		self.weight = w
		self.diet = d

	# Some methods of Animal
	def eat(self, food, how_much):
		print(f'The {self.species} is eating a {food} snack')
		self.weight += how_much

	def sleep(self):
		print('Boof naps on boofin spot')

	def move(self):
		print(f'The {self.species} is snoofin on a neighborhood watch')


# Make animal objects

luna = Animal('sloth pug', 25, 'salmon')
niffler = Animal('niffler', 5, 'shiny stuff')

print(luna.species)
print(niffler.species)
print()
niffler.move()
print(niffler.weight)
niffler.eat('gold coins', 1)
print(niffler.weight)
niffler.sleep()
print()

luna.move()
print(luna.weight)
luna.eat('boofin birthday breakfast', 2)
print(luna.weight)
luna.sleep()



'''
OUTPUT:
sloth pug
niffler

The niffler is snoofin on a neighborhood watch
5
The niffler is eating a gold coins snack
6
Boof naps on boofin spot

The sloth pug is snoofin on a neighborhood watch
25
The sloth pug is eating a boofin birthday breakfast snack
27
Boof naps on boofin spot
'''