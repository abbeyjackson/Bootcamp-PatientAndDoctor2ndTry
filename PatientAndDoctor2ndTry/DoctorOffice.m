//
//  DoctorOffice.m
//  PatientAndDoctor2ndTry
//
//  Created by Abegael Jackson on 2015-05-18.
//  Copyright (c) 2015 Abegael Jackson. All rights reserved.
//

#import "DoctorOffice.h"
#import "Patient.h"
#import "Doctor.h"

@implementation DoctorOffice{
    
    NSDictionary *medicationDatabase;
    NSMutableDictionary *patientPrescriptions;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self->medicationDatabase = @{@"headache":@"Tylenol", @"stomach ache":@"Tums", @"dizzy":@"Regeneration"};
        self->patientPrescriptions = [[NSMutableDictionary alloc]init];
    }
    return self;
}

-(NSString*)getMedicationForPatient:(Patient*)patient{
    NSString *prescription = [medicationDatabase valueForKey:patient.symptom.lowercaseString];
//    NSLog(@"prescription: %@", prescription);
    return prescription;
}

-(void)addPrescription:(NSString*)prescription toPatientFile:(Patient*)patient{
    [patientPrescriptions setValue:prescription forKey:patient.name];
//    NSString *patientPrescription = [patientPrescriptions valueForKey:patient.name];
//    NSLog(@"patient prescription: %@", patientPrescription);
}


@end
