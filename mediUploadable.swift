//
//  mediUploadable.swift
//  watch-lib-tester-2 WatchKit Extension
//
//  Created by Nathaniel Jacobs on 11/21/19.
//  Copyright © 2019 Medidata Solutions. All rights reserved.
//

import Foundation

public protocol mediUploadable {
    func uploadCompleted(success:Bool, errorMessage:String, fileName: String)
}
