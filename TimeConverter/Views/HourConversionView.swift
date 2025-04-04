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
        
        VStack {
            
            //OUTPUT
            
            // We will unwrap the optional convertionResult if possible and show result
            if let conversionResult = viewModel.conversionResult{
                
                VStack {
                    Text("\(conversionResult.timeInHours)")
                   
                    Text("\(conversionResult.timeInMinutes)")
                   
                    Text("\(conversionResult.timeInSeconds)")
                }
                .frame(height:200)
                
                
               
            } else {
                
                ContentUnavailableView("Unable to preform convertion", systemImage: "gear.badge.questionmark", description: Text(viewModel.recoverySuggestion))
                    .frame(height:200)
                
            }
            
            //IMPUT
             TextField("Enter the number of hours", text: $viewModel.providedHours)
                 .textFieldStyle(.roundedBorder)
            
        }
            

        
        
        
     
    }
}


#Preview {
    HourConversionView()
}
