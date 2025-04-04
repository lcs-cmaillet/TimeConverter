//
//  HourConversionView.swift
//  TimeConverter
//
//  Created by Russell Gordon on 2025-02-24.
//

import SwiftUI

struct HourConversionView: View {
    
    //MARK: Stored Properties
    @State var viewModel = HourConversionViewModel()
    
    //MARK: Computed properties
    var body: some View {
       //IMPUT
        TextField("Enter the number of hours", text: $viewModel.providedHours)
        
        //OUTPUT
        
        // We will unwrap the optional convertionResult if possible and show result
        if let conversionResult = viewModel.conversionResult{
            Text("\(conversionResult.timeInHours)")
           
            Text("\(conversionResult.timeInMinutes)")
           
            Text("\(conversionResult.timeInSeconds)")
           
        } else {
            
            ContentUnavailableView("Unable to preform convertion", systemImage: "gear.badge.questionmark", description: Text(viewModel.recoverySuggestion))
        }
        
     
    }
}


#Preview {
    HourConversionView()
}
