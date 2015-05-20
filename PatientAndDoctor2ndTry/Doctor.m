//
//  Doctor.m
//  PatientAndDoctor2ndTry
//
//  Created by Abegael Jackson on 2015-05-18.
//  Copyright (c) 2015 Abegael Jackson. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"
#import "DoctorOffice.h"

@implementation Doctor


-(instancetype)initWithName:(NSString*)name andSpecialization:(NSString*)specialization{
    self = [super init];
    if (self){
        _name = name;
        _specialization = specialization;
        _patients = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)doctorAcceptPatient:(Patient*)patient{
    [_patients addObject:patient];
}

-(void)givePatientPrescription:(Patient*)patient{
//    NSString *prescription = [self.medicationDatabase valueForKey:patient.symptom];
    
    NSString *prescription = [self.doctorOffice getMedicationForPatient:patient];
    
    NSLog(@"%@: I'd be happy to help you with that. What you need is %@.", self.name, prescription);
    
    [self.doctorOffice addPrescription:prescription toPatientFile:patient];
    
    
}

@end
