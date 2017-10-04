//
//  Resturants.Mock.swift
//  RunFattyRun
//
//  Created by Lennart Olsen on 04/10/2017.
//  Copyright © 2017 Burger Inc. All rights reserved.
//

import Foundation

/**
 * Mocked out for now
 **/
class ResturantRepository {
    init(){
        loadResturants()
    }
    func getAll() -> [Resturant] {
        return resturants
    }
}

private var resturants = [Resturant]()

private func loadResturants() {
    
    resturants += [
        /** Region Hovedstaden **/
        Resturant(Name: "Mc Donalds Ballerup", Lat: 55, Lng: 10),
        Resturant(Name: "Mc Donalds Birkerød", Lat: 56, Lng: 10),
        Resturant(Name: "Mc Donalds Frederiksund", Lat: 54, Lng: 10),
        Resturant(Name: "Mc Donalds Frederiksværk", Lat: 54, Lng: 10),
        Resturant(Name: "Mc Donalds Gentofte", Lat: 54, Lng: 10),
        Resturant(Name: "Mc Donalds Helsingør", Lat: 54, Lng: 10),
        Resturant(Name: "Mc Donalds Herlev", Lat: 54, Lng: 10),
        Resturant(Name: "Mc Donalds Hillerød", Lat: 54, Lng: 10),
        Resturant(Name: "Mc Donalds Hvidovre", Lat: 54, Lng: 10),
        Resturant(Name: "Mc Donalds Amager", Lat: 54, Lng: 10),
        Resturant(Name: "Mc Donalds København (Amagerbrogade)", Lat: 54, Lng: 10),
        Resturant(Name: "Mc Donalds København (Ellebjerg)", Lat: 54, Lng: 10),
        Resturant(Name: "Mc Donalds København (Fisketorvet)", Lat: 54, Lng: 10),
        Resturant(Name: "Mc Donalds København (Hovedbanegården)", Lat: 54, Lng: 10),
        Resturant(Name: "Mc Donalds København (Kastrup)", Lat: 54, Lng: 10),
        Resturant(Name: "Mc Donalds København (Nørrebro)", Lat: 54, Lng: 10),
        Resturant(Name: "Mc Donalds København (Nørreport)", Lat: 54, Lng: 10),
        Resturant(Name: "Mc Donalds København (Rådhuspladsen)", Lat: 54, Lng: 10),
        Resturant(Name: "Mc Donalds København (Scala)", Lat: 54, Lng: 10),
        Resturant(Name: "Mc Donalds København (Østerbro)", Lat: 54, Lng: 10),
        Resturant(Name: "Mc Donalds Rødovre", Lat: 54, Lng: 10),
        Resturant(Name: "Mc Donalds Taastrup (City 2)", Lat: 54, Lng: 10),
        Resturant(Name: "Mc Donalds Taastrup (Mårkærvej)", Lat: 54, Lng: 10),
        Resturant(Name: "Mc Donalds Vallensbæk", Lat: 54, Lng: 10),
        
        /** Region Sjælland **/
        Resturant(Name: "Mc Donalds Holbæk", Lat: 54, Lng: 10),
        Resturant(Name: "Mc Donalds Køge", Lat: 54, Lng: 10),
        Resturant(Name: "Mc Donalds Nykøbing F", Lat: 54, Lng: 10),
        Resturant(Name: "Mc Donalds Næstved (Blegdammen)", Lat: 54, Lng: 10),
        Resturant(Name: "Mc Donalds Næstved (Gl. Holstedvej)", Lat: 54, Lng: 10),
        Resturant(Name: "Mc Donalds Roskilde (Københavnsvej)", Lat: 54, Lng: 10),
        Resturant(Name: "Mc Donalds Roskilde (Ringstedgade)", Lat: 54, Lng: 10),
        Resturant(Name: "Mc Donalds Slagelse", Lat: 54, Lng: 10),
        Resturant(Name: "Mc Donalds Solrød", Lat: 54, Lng: 10),
        Resturant(Name: "Mc Donalds Ringsted", Lat: 54, Lng: 10),
        
        /** Region Syddanmark **/
        Resturant(Name: "Mc Donalds Esbjerg (Gjesing)", Lat: 54, Lng: 10),
        Resturant(Name: "Mc Donalds Esbjerg (Kongensgade)", Lat: 54, Lng: 10),
        Resturant(Name: "Mc Donalds Esbjerg (Storegade)", Lat: 54, Lng: 10),
        Resturant(Name: "Mc Donalds Fredericia", Lat: 54, Lng: 10),
        Resturant(Name: "Mc Donalds Haderslev", Lat: 54, Lng: 10),
        Resturant(Name: "Mc Donalds Kolding", Lat: 54, Lng: 10),
        Resturant(Name: "Mc Donalds Middelfart", Lat: 54, Lng: 10),
        Resturant(Name: "Mc Donalds Nyborg", Lat: 54, Lng: 10),
        Resturant(Name: "Mc Donalds Odense (Hjallese)", Lat: 54, Lng: 10),
        Resturant(Name: "Mc Donalds Odense (Kongensgade)", Lat: 54, Lng: 10),
        Resturant(Name: "Mc Donalds Odense (Odense Banegårdcenter)", Lat: 54, Lng: 10),
        Resturant(Name: "Mc Donalds Odense (Rosengårscenteret)", Lat: 54, Lng: 10),
        Resturant(Name: "Mc Donalds Odense (Tarup Center)", Lat: 54, Lng: 10),
        Resturant(Name: "Mc Donalds Rødekro", Lat: 54, Lng: 10),
        Resturant(Name: "Mc Donalds Svendborg", Lat: 54, Lng: 10),
        Resturant(Name: "Mc Donalds Sønderborg", Lat: 54, Lng: 10),
        Resturant(Name: "Mc Donalds Tønder", Lat: 54, Lng: 10),
        Resturant(Name: "Mc Donalds Varde", Lat: 54, Lng: 10),
        Resturant(Name: "Mc Donalds Vejen", Lat: 54, Lng: 10),
        Resturant(Name: "Mc Donalds Vejle (GateWay E45)", Lat: 54, Lng: 10),
        Resturant(Name: "Mc Donalds Vejle (Vinding)", Lat: 54, Lng: 10),
        
        /** Region MIdtjylland **/
    ]
}
