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
        Text("\(viewModel.conversionResult?.timeInHours)")
        
        Text("\(viewModel.conversionResult?.timeInMinutes)")
       
        Text("\(viewModel.conversionResult?.timeInSeconds)")
       
    }
}


#Preview {
    HourConversionView()
}
