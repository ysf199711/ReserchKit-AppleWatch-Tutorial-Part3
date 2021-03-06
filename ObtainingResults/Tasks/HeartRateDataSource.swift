//
//  HeartRateDataSource.swift
//  ObtainingResults
//
//  Created by 叶思帆 on 27/07/2018.
//  Copyright © 2018 Sifan Ye. All rights reserved.
//

import ResearchKit

class HeartRateDataSource: NSObject, ORKValueRangeGraphChartViewDataSource{
    
    var plotPoints = [ORKValueRange]()
    
    func numberOfPlots(in graphChartView: ORKGraphChartView) -> Int {
        return 1
    }
    
    func graphChartView(_ graphChartView: ORKGraphChartView, dataPointForPointIndex pointIndex: Int, plotIndex: Int) -> ORKValueRange {
        return plotPoints[pointIndex]
    }
    
    func graphChartView(_ graphChartView: ORKGraphChartView, numberOfDataPointsForPlotIndex plotIndex: Int) -> Int {
        return plotPoints.count
    }
    
    func updatePlotPoints(newPlotPoints: [ORKValueRange]){
        self.plotPoints = newPlotPoints
    }
    
}
