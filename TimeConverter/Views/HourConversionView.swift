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
        
        NavigationStack {
            VStack {
                
                //OUTPUT
                
                // We will unwrap the optional convertionResult if possible and show result
                if let conversionResult = viewModel.conversionResult{
                    
                    VStack(alignment: .leading) {
                        Text("\(conversionResult.timeInHours.formatted()) hours")
                        HStack {
                            Text("= \(conversionResult.timeInMinutes.formatted()) minutes,")
                           
                            Text("\(conversionResult.timeInSeconds.formatted()) secounds")
                        }
                    }
                    .font(.title3)
                    .frame(height:200)
                    
                    
                   
                } else {
                    
                    ContentUnavailableView("Unable to preform convertion", systemImage: "gear.badge.questionmark", description: Text(viewModel.recoverySuggestion))
                        .frame(height:200)
                    
                }
                
                //IMPUT
                 TextField("Enter the number of hours", text: $viewModel.providedHours)
                     .textFieldStyle(.roundedBorder)
                
                HStack {
                    Text("History")
                        .bold()
                        .font(.title3)
                    
                    Spacer()
                }
                
                
            }
            .padding()
            .navigationTitle("Time Convertion")
        }

        
        
        
     
    }
}


#Preview {
    HourConversionView()
}
