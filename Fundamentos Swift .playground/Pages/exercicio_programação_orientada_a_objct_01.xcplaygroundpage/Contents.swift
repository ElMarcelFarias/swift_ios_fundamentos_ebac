import Foundation

//Exercício módulo 09/Programação orientada a Objeto

class Empregado {
    
    var nome: String
    var sobrenome: String
    var fullName: String {
        "\(nome) \(sobrenome)"
    }
    
    init(nome: String, sobrenome: String) {
        self.nome = nome
        self.sobrenome = sobrenome
    }

}

//Exercico para praticar herança

class Empresa: Empregado {
    
    var nomeEmpresa: String
    var ramoEmpresa: String
    var razaoSocial: String
    
    func EmpresaData(){
        print( "Nome da Empresa: \(nomeEmpresa) \nRamo: \(ramoEmpresa)\nRazão Social: \(razaoSocial) \nNome do Empregado: \(nome) \(sobrenome)")
    }
    
    func returnRazaoSocial() -> String {
        return "\(razaoSocial)"
    }
    
    
    //preciso primeiro inicializar todos os argumentos tanto da classe de herança, tanto da primária
    init(nome: String, sobrenome: String, nomeEmpresa: String, ramoEmpresa: String, razaoSocial: String) {
        
        //na class primária inicio com o self
        self.nomeEmpresa = nomeEmpresa
        self.ramoEmpresa = ramoEmpresa
        self.razaoSocial = razaoSocial
        
        //na classe que contem uma herança inicio com super.init e passando a própria váriavel como valor
        super.init(nome: nome, sobrenome: sobrenome)
    }
}

var empresaSul = Empresa.init(nome: "Marcel", sobrenome: "Leite de Farias", nomeEmpresa: "Sul Sistemas da informação", ramoEmpresa: "Desenvolvimento de Sistemas", razaoSocial: "Razão Social")
empresaSul.EmpresaData()

var razaoSocial = empresaSul.returnRazaoSocial()
print(razaoSocial)

