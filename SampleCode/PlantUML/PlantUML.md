# Online PlantUML Web Server

http://www.plantuml.com/plantuml/uml/SyfFKj2rKt3CoKnELR1Io4ZDoSa70000

# Run PlantUML from the command line

1. Create a text file: designpattern.txt

`
@startuml
class Product
{ 
	+ String: name
	+ double: price
    + void: getPrice()
}
@enduml
`

2. Run PlantUML

`java -jar plantuml.jar designpattern.txt`
