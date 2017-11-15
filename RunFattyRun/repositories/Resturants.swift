//
//  Resturants.Mock.swift
//  RunFattyRun
//
//  Created by Lennart Olsen on 04/10/2017.
//  Copyright © 2017 Burger Inc. All rights reserved.
//

import Foundation
import CoreLocation

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
    func getByDistance(currentLocation : CLLocation) -> [Resturant]{
        for rest in resturants {
            let dist = currentLocation.distance(from: rest.location)
            NSLog("Distance to resturant \(dist)")
            rest.distanceFrom = currentLocation.distance(from: rest.location)
        }
        return resturants
    }
}

private var resturants = [Resturant]()

private func loadResturants() {
    
    resturants += [
        /** Region Hovedstaden **/
        Resturant(Name: "Mc Donalds Ballerup", Location : CLLocation(latitude: 55, longitude: 10)),
        Resturant(Name: "Mc Donalds Birkerød", Location : CLLocation(latitude: 56, longitude: 10)),
        Resturant(Name: "Mc Donalds Frederiksund", Location : CLLocation(latitude: 54, longitude: 10)),
        Resturant(Name: "Mc Donalds Frederiksværk", Location : CLLocation(latitude: 54, longitude: 10)),
        Resturant(Name: "Mc Donalds Gentofte", Location : CLLocation(latitude: 54, longitude: 10)),
        Resturant(Name: "Mc Donalds Helsingør", Location : CLLocation(latitude: 54, longitude: 10)),
        Resturant(Name: "Mc Donalds Herlev", Location : CLLocation(latitude: 54, longitude: 10)),
        Resturant(Name: "Mc Donalds Hillerød", Location : CLLocation(latitude: 54, longitude: 10)),
        Resturant(Name: "Mc Donalds Hvidovre", Location : CLLocation(latitude: 54, longitude: 10)),
        Resturant(Name: "Mc Donalds Amager", Location : CLLocation(latitude: 54, longitude: 10)),
        Resturant(Name: "Mc Donalds København (Amagerbrogade)", Location : CLLocation(latitude: 54, longitude: 10)),
        Resturant(Name: "Mc Donalds København (Ellebjerg)", Location : CLLocation(latitude: 54, longitude: 10)),
        Resturant(Name: "Mc Donalds København (Fisketorvet)", Location : CLLocation(latitude: 54, longitude: 10)),
        Resturant(Name: "Mc Donalds København (Hovedbanegården)", Location : CLLocation(latitude: 54, longitude: 10)),
        Resturant(Name: "Mc Donalds København (Kastrup)", Location : CLLocation(latitude: 54, longitude: 10)),
        Resturant(Name: "Mc Donalds København (Nørrebro)", Location : CLLocation(latitude: 54, longitude: 10)),
        Resturant(Name: "Mc Donalds København (Nørreport)", Location : CLLocation(latitude: 54, longitude: 10)),
        Resturant(Name: "Mc Donalds København (Rådhuspladsen)", Location : CLLocation(latitude: 54, longitude: 10)),
        Resturant(Name: "Mc Donalds København (Scala)", Location : CLLocation(latitude: 54, longitude: 10)),
        Resturant(Name: "Mc Donalds København (Østerbro)", Location : CLLocation(latitude: 54, longitude: 10)),
        Resturant(Name: "Mc Donalds Rødovre", Location : CLLocation(latitude: 54, longitude: 10)),
        Resturant(Name: "Mc Donalds Taastrup (City 2)", Location : CLLocation(latitude: 54, longitude: 10)),
        Resturant(Name: "Mc Donalds Taastrup (Mårkærvej)", Location : CLLocation(latitude: 54, longitude: 10)),
        Resturant(Name: "Mc Donalds Vallensbæk", Location : CLLocation(latitude: 54, longitude: 10)),
        
        /** Region Sjælland **/
        Resturant(Name: "Mc Donalds Holbæk", Location : CLLocation(latitude: 54, longitude: 10)),
        Resturant(Name: "Mc Donalds Køge", Location : CLLocation(latitude: 54, longitude: 10)),
        Resturant(Name: "Mc Donalds Nykøbing F", Location : CLLocation(latitude: 54, longitude: 10)),
        Resturant(Name: "Mc Donalds Næstved (Blegdammen)", Location : CLLocation(latitude: 54, longitude: 10)),
        Resturant(Name: "Mc Donalds Næstved (Gl. Holstedvej)", Location : CLLocation(latitude: 54, longitude: 10)),
        Resturant(Name: "Mc Donalds Roskilde (Københavnsvej)", Location : CLLocation(latitude: 54, longitude: 10)),
        Resturant(Name: "Mc Donalds Roskilde (Ringstedgade)", Location : CLLocation(latitude: 54, longitude: 10)),
        Resturant(Name: "Mc Donalds Slagelse", Location : CLLocation(latitude: 54, longitude: 10)),
        Resturant(Name: "Mc Donalds Solrød", Location : CLLocation(latitude: 54, longitude: 10)),
        Resturant(Name: "Mc Donalds Ringsted", Location : CLLocation(latitude: 54, longitude: 10)),
        
        /** Region Syddanmark **/
        Resturant(Name: "Mc Donalds Esbjerg (Gjesing)", Location : CLLocation(latitude: 54, longitude: 10)),
        Resturant(Name: "Mc Donalds Esbjerg (Kongensgade)", Location : CLLocation(latitude: 54, longitude: 10)),
        Resturant(Name: "Mc Donalds Esbjerg (Storegade)", Location : CLLocation(latitude: 54, longitude: 10)),
        Resturant(Name: "Mc Donalds Fredericia", Location : CLLocation(latitude: 54, longitude: 10)),
        Resturant(Name: "Mc Donalds Haderslev", Location : CLLocation(latitude: 54, longitude: 10)),
        Resturant(Name: "Mc Donalds Kolding", Location : CLLocation(latitude: 54, longitude: 10)),
        Resturant(Name: "Mc Donalds Middelfart", Location : CLLocation(latitude: 54, longitude: 10)),
        Resturant(Name: "Mc Donalds Nyborg", Location : CLLocation(latitude: 54, longitude: 10)),
        Resturant(Name: "Mc Donalds Odense (Hjallese)", Location : CLLocation(latitude: 54, longitude: 10)),
        Resturant(Name: "Mc Donalds Odense (Kongensgade)", Location : CLLocation(latitude: 54, longitude: 10)),
        Resturant(Name: "Mc Donalds Odense (Odense Banegårdcenter)", Location : CLLocation(latitude: 54, longitude: 10)),
        Resturant(Name: "Mc Donalds Odense (Rosengårscenteret)", Location : CLLocation(latitude: 54, longitude: 10)),
        Resturant(Name: "Mc Donalds Odense (Tarup Center)", Location : CLLocation(latitude: 54, longitude: 10)),
        Resturant(Name: "Mc Donalds Rødekro", Location : CLLocation(latitude: 54, longitude: 10)),
        Resturant(Name: "Mc Donalds Svendborg", Location : CLLocation(latitude: 54, longitude: 10)),
        Resturant(Name: "Mc Donalds Sønderborg", Location : CLLocation(latitude: 54, longitude: 10)),
        Resturant(Name: "Mc Donalds Tønder", Location : CLLocation(latitude: 54, longitude: 10)),
        Resturant(Name: "Mc Donalds Varde", Location : CLLocation(latitude: 54, longitude: 10)),
        Resturant(Name: "Mc Donalds Vejen", Location : CLLocation(latitude: 54, longitude: 10)),
        Resturant(Name: "Mc Donalds Vejle (GateWay E45)", Location : CLLocation(latitude: 54, longitude: 10)),
        Resturant(Name: "Mc Donalds Vejle (Vinding)", Location : CLLocation(latitude: 54, longitude: 10)),
    ]
}
