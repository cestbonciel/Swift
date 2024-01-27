import UIKit

class Album {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func getPerformance() -> String {
        return "The album \(name)sold lots"
    }
}

class StudioAlbum: Album {
    var studio: String
    
    init(name: String, studio: String) {
        self.studio = studio
        super.init(name: name)
    }
    
    override func getPerformance() -> String {
        return "The studio album \(name) sold lots"
    }
}

class LiveAlbum: Album {
    var location: String
    
    init(name: String, location: String) {
        self.location = location
        super.init(name: name)
    }
    
    override func getPerformance() -> String {
        return "The Live album \(name) sold lots"
    }
}


var tayloySwift = StudioAlbum(name: "🎧 Taylor Swift", studio: "The Castle Studios")
var fearless =  StudioAlbum(name: "🎧 Speak Now", studio: "Aimmeland Studio")
var iTunesLive = LiveAlbum(name: "🎧 iTunes Live from Soho", location: "New York")

var allAlbums: [Album] = [tayloySwift, fearless, iTunesLive]

for (idx, name) in allAlbums.enumerated() {
    print("playlist \(idx+1): \(name.getPerformance())")
}

/*
 
for album in allAlbums {
    print(album.studio)
    // value of type 'Album' has no member 'studio'
}
 
*/

//for album in allAlbums {
//    print("======")
//    print(album.getPerformance())
//    if let studioAlbum = album as? StudioAlbum {
//        print(studioAlbum.studio)
//    } else if let liveAlbum = album as? LiveAlbum {
//        print(liveAlbum.location)
//    }
//    print("===DownCasting===")
//}

/*
for album in allAlbums {
    let studioAlbum = album as! StudioAlbum
    // Album 클래스 내에는 studio 저장 프로퍼티가 없다.
    print(studioAlbum.studio)
}
// Could not cast value of type '__lldb_expr_141.LiveAlbum' (0x1034d0d08) to '__lldb_expr_141.StudioAlbum' (0x1034d0c28).
*/

let number = 5
let text = String(number) as! String
// Cast from 'Int' to unrelated type 'String' always fails
