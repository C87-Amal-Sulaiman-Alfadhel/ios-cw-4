struct Movie {
    var title : String
    var mainActors : [String]
    var mainCharacters : [String]
    var imdbRate : Double
    var pgRate : String
    var genre : [String]
    var description : String
    
    init(title: String, mainActors: [String], mainCharacters: [String], imdbRate: Double, pgRate: String, genre: [String], description: String){
        self.title = title
        self.mainActors = mainActors
        self.mainCharacters = mainCharacters
        self.imdbRate = imdbRate
        self.pgRate = pgRate
        self.genre = genre
        self.description = description
    }
    func printDescription() {
        if pgRate == "PG" {
            print ("This movie is suitable for kids, \(description)")
        }
        else if pgRate == "PG-13" {
           print ("This movie is not suitable for kids, \(description)")
        }
    }
    
    func isKidsSuitable() -> String {
        if pgRate == "PG" {
            return "Parental Guidance Suggested!"
        }
        else if pgRate == "PG-13" {
            return "Parents Strongly Cautioned!"
        } else{
            return "PG rate is invalid"
        }
    }
}
var rockyBalboa = Movie (title: "Rocky", mainActors: ["Sylvester Stallone", "Talia Shire", "Burt Young", "Carl Weathers"], mainCharacters: ["Rocky Balboa", "Adrian Pennino", "Paulie Pennino", "Apollo Creed"], imdbRate: 8.1, pgRate: "PG", genre: ["Sports", "Drama"], description: "movie name: Rocky")
    
    rockyBalboa.printDescription()
    print(rockyBalboa.isKidsSuitable())

var harryPotter = Movie (title: "Harry Potter and the Half-Blood Prince", mainActors: ["Daniel Radcliffe", "Emma Watson", "Rupert Grint", "Tom Felton"], mainCharacters: ["Harry Potter", "Hermione Granger", "Ron Weasley", "Draco Malfoy"], imdbRate: 7.6, pgRate: "PG", genre: ["Fantasy", "Mystery", "Action", "Adventure"], description: "movie name: Harry Potter and the Half-Blood Prince")

    harryPotter.printDescription()
    print(harryPotter.isKidsSuitable())

var batman = Movie (title: "The Dark Knight", mainActors: ["Christian Bale", " Michael Cane", "Heath Ledger"], mainCharacters: ["Batman/Bruce Wayne", "Alfred Pennyworth", "Joker" ], imdbRate: 9, pgRate: "PG-13", genre: ["Action", "Superhero", "Adventure", "Thriller", "Mystery"], description: "movie name: The Dark Knight")

    batman.printDescription()
    print(batman.isKidsSuitable())  
