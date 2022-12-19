
import Foundation

/// Table View e ARC

/// ARC aula inteira sobre WEAK referëncia fraca
/// sempre quando utilizamos a referencia weak nas variáveis ela deverá ser um optional ?.



class Recipe {
    let title: String
    weak var chef: Chef?
    
    init(title: String) {
        self.title = title
    }
    
    deinit {
        print("GoodBye  Recipe \(title)")
    }
}

class Chef {
    let name: String
    var recipes: [Recipe] = []
    
    init(name: String) {
        self.name = name
    }
    
    deinit {
        print("Goodbye \(name)")
    }
}



do {
    let recipe = Recipe(title: "Gerenciando Memória")
    let chef = Chef(name: "Marcel Leite de Farias")
    recipe.chef = chef
    chef.recipes.append(recipe)
}
