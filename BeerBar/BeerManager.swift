//
//  BeerManager.swift
//  BeerBar
//
//  Created by Robert Kotrutsa on 03.02.2024.
//

import UIKit

class BeerManager {
    
    static let shared = BeerManager()
    
    private init() { }
    
    var selectedBeer: Beer?
    
    var beers: [Beer] = [
        Beer(name: "Firestone Walker Old Man Hattan", country: "🇺🇸", type: BeerType.dark, prices: (9.99, 14.99, 24.99), image: UIImage(named: "firestone-walker-old-man-hattan-icon"), volume: 100),
        Beer(name: "CBS", country: "🇨🇦", type: BeerType.dark, prices: (9.99, 14.99, 24.99), image: UIImage(named: "cbs-icon"), volume: 100),
        Beer(name: "Mas Agave", country: "🇨🇦", type: BeerType.dark, prices: (9.99, 14.99, 24.99), image: UIImage(named: "mas-agave-icon"), volume: 100),
        Beer(name: "Wychwood Hobgoblin", country: "🇬🇧", type: BeerType.dark, prices: (9.99, 14.99, 24.99), image: UIImage(named: "wychwood-hobgoblin-icon"), volume: 100),
        Beer(name: "Del Ducato Settembre", country: "🇮🇹", type: BeerType.dark, prices: (9.99, 14.99, 24.99), image: UIImage(named: "del-ducato-settembre-icon"), volume: 100),
        Beer(name: "Oude Geuze Boon Black Label", country: "🇧🇪", type: BeerType.dark, prices: (9.99, 14.99, 24.99), image: UIImage(named: "oude-geuze-boon-black-label-icon"), volume: 100),
        Beer(name: "Rodenbach Vintage", country: "🇧🇪", type: BeerType.dark, prices: (9.99, 14.99, 24.99), image: UIImage(named: "rodenbach-vintage-icon"), volume: 100),
        Beer(name: "Cantillon Gueuze", country: "🇧🇪", type: BeerType.dark, prices: (9.99, 14.99, 24.99), image: UIImage(named: "cantillon-gueuze-icon"), volume: 100),
        Beer(name: "Alvinne Phi", country: "🇧🇪", type: BeerType.dark, prices: (9.99, 14.99, 24.99), image: UIImage(named: "alvinne-phi-icon"), volume: 100),
        Beer(name: "La Trappe Oak Aged", country: "🇳🇱", type: BeerType.dark, prices: (9.99, 14.99, 24.99), image: UIImage(named: "la-trappe-oak-aged-icon"), volume: 100),
        Beer(name: "De Molen Bommen&Granaten", country: "🇳🇱", type: BeerType.dark, prices: (9.99, 14.99, 24.99), image: UIImage(named: "de-molen-bommen&granaten-icon"), volume: 100),
        Beer(name: "Kees & De Molen Frick&Frack", country: "🇩🇪", type: BeerType.dark, prices: (9.99, 14.99, 24.99), image: UIImage(named: "kees&de-molen-frick&frack-icon"), volume: 100),
        Beer(name: "Aecht Schlenkerla Rauchbier", country: "🇩🇪", type: BeerType.dark, prices: (9.99, 14.99, 24.99), image: UIImage(named: "aecht-schlenkerla-rauchbier-icon"), volume: 100),
        Beer(name: "Dunkel", country: "🇩🇪", type: BeerType.dark, prices: (9.99, 14.99, 24.99), image: UIImage(named: "dunkel-icon"), volume: 100),
        Beer(name: "Rauchbier", country: "🇩🇪", type: BeerType.dark, prices: (9.99, 14.99, 24.99), image: UIImage(named: "rauchbier-icon"), volume: 100)
    ]
    
}
