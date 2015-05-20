//
//  DoctorOffice.h
//  PatientAndDoctor2ndTry
//
//  Created by Abegael Jackson on 2015-05-18.
//  Copyright (c) 2015 Abegael Jackson. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Patient;

@interface DoctorOffice : NSObject

-(void)addPrescription:(NSString*)prescription toPatientFile:(Patient*)patient;

-(NSString*)getMedicationForPatient:(Patient*)patient;

@end
