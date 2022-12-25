//
//  QuoteDelegate.swift
//  simpraHw1
//
//  Created by Furkan Deniz Albaylar on 25.12.2022.
//

import Foundation

protocol QuoteDelegate: AnyObject
{
    func onQuoteReady(quote: String)
}
