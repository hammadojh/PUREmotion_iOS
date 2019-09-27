//
//  testjson.swift
//  PUREmotionTest
//
//  Created by Omar on 23/09/2019.
//  Copyright © 2019 Omar. All rights reserved.
//

import SwiftUI

/*Decode JSON*/

func decodeJson(url:String) -> [FormPage]? {
    
    print("in decode")
    
    let data = readJSONFromFile(fileName: url)
    
    guard data != nil else {
        print("data is nil")
        return nil
    }
    
    let pages = parse(data: data!)
    
    return pages
}


/*Decode JSON*/


fileprivate func parse(data: Data) -> [FormPage]? {
        
    let decoder = JSONDecoder()
    if let page = try? decoder.decode([FormPage].self, from: data) {
        return page
    }else{
        print("returning nil")
        return nil
    }
    
}


/*Read from JSON*/


func readJSONFromFile(fileName: String) -> Data?
{
    var json:Data?
    if let path = Bundle.main.path(forResource: fileName, ofType: "json") {
        do {
            let fileUrl = URL(fileURLWithPath: path)
            // Getting data from JSON file using the file URL
            let data = try Data(contentsOf: fileUrl, options: .mappedIfSafe)
            json = data
        } catch {
            // Handle error here
            print("Error")
        }
    }
    return json
}
