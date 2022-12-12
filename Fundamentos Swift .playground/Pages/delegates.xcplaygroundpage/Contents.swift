
import Foundation

struct Cookie {
    var count: Int = 2
    var hasChocolateChips: Bool = false
}

protocol CandyShopDelegate {
    func cookieIsDone(_ cookie: Cookie)
    func preferredCokieCount() -> Int
}

class CandyShop {
    var delegate: CandyShopDelegate?
    
    func makeCookie() {
        var cookie = Cookie()
        cookie.count = delegate?.preferredCokieCount() ?? 4
        cookie.hasChocolateChips = true
        delegate?.cookieIsDone(cookie)
    }
}

class CookieShop: CandyShopDelegate {
    func cookieIsDone(_ cookie: Cookie) {
        print("Novos cookies estão prontos, no total de \(cookie.count)")
    }
    
    func preferredCokieCount() -> Int {
        return 9
    }
    
    
}

let cookieShop = CookieShop()
let candyShop = CandyShop()

candyShop.delegate = cookieShop
candyShop.makeCookie()
