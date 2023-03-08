//
//  File.swift
//  
//
//  Created by ChrisChou on 2023/1/23.
//

import Vapor
import Plot

extension HTML {
    var htmlResponse: Response {
        var header = HTTPHeaders()
        header.add(name: .contentType, value: "text/html; charset=utf-8")
        let response = Response(
            status: .ok,
            body: .init(string: self.render())
        )
        response.headers = header
        return response
    }
}
