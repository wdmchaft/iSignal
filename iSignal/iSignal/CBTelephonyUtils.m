//
//  CBTelephonyEvaluater.m
//  iSignal
//
//  Created by Patrick Deng on 11-8-25.
//  Copyright 2011 CodeBeaver. All rights reserved.
//

#import "CBTelephonyUtils.h"

@implementation CBTelephonyUtils

// Manual Codes Begin

+(SIGNAL_QUALITY) evaluateSignalQuality:(NSInteger) signalStrength;
{
    SIGNAL_QUALITY quality = QUALITY_SIGNAL_5;
    if(QUALITY_SIGNAL_0_UPPERLIMIT >= signalStrength)
    {
        quality = QUALITY_SIGNAL_0;
    }
    else if((QUALITY_SIGNAL_1_UPPERLIMIT >= signalStrength) && (signalStrength >= QUALITY_SIGNAL_1_LOWERLIMIT))
    {
        quality = QUALITY_SIGNAL_1;
    }
    else if((QUALITY_SIGNAL_2_UPPERLIMIT >= signalStrength) && (signalStrength >=QUALITY_SIGNAL_2_LOWERLIMIT))
    {
        quality = QUALITY_SIGNAL_2;
    }
    else if((QUALITY_SIGNAL_3_UPPERLIMIT >= signalStrength) && (signalStrength >= QUALITY_SIGNAL_3_LOWERLIMIT))
    {
        quality = QUALITY_SIGNAL_3;
    }
    else if((QUALITY_SIGNAL_4_UPPERLIMIT >= signalStrength) && (signalStrength >= QUALITY_SIGNAL_4_LOWERLIMIT))
    {
        quality = QUALITY_SIGNAL_4;
    }

    return quality;
}

- (id)init
{
    return nil;
    // Disable object initialization.
    //    self = [super init];
    //    if (self) 
    //    {
    //        // Initialization code here.
    //    }
    //    
    //    return self;
}

// Manual Codes End

@end
