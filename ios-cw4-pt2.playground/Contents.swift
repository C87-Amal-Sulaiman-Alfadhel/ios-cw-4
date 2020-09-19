

var countryLanguage = ["Kuwait", "Korea", "France"]
var flagLanguage = ["🇰🇼", "🇰🇷", "🇫🇷"]
var greetingArray = ["", "", ""]
 
struct Language {
    var country: String
    var flag: String
    
    func greeting(name: String) -> String {
        return "\(country) \(name) \(flag)"
    }
}
var languages = [
    Language(country: "مرحبا", flag: "🇰🇼"),
    Language(country: "Annyeonghaseyo", flag: "🇰🇷"),
    Language(country: "Bonjour", flag: "🇫🇷")
]
for language in languages {
    print(language.greeting(name:"Amal"))
}
 
