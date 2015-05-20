//
//  Patient.m
//  PatientAndDoctor2ndTry
//
//  Created by Abegael Jackson on 2015-05-18.
//  Copyright (c) 2015 Abegael Jackson. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"

@implementation Patient


-(instancetype)initWithName:(NSString*)name age:(int)age symptom:(NSString*)symptom andHasHealthCard:(BOOL)hasHealthCard{
    self = [super init];
    if (self){
        _name = name;
        _age = age;
        _symptom = symptom;
        _hasHealthCard = hasHealthCard;
    }
    return self;
}

-(void) visitDoctor:(Doctor*)doctor{
    if (_hasHealthCard == YES) {
        [doctor doctorAcceptPatient:self];
        [self askDoctorNameAndSpecialization:doctor];
        NSLog(@"%@: How can I help you today?", doctor.name);
        [self requestMedication];
        [doctor givePatientPrescription:self];
        
    }
    else{
        NSLog(@"%@: I'm sorry but I can not accept you without a health card", doctor.name);
    }
}

-(void) askDoctorNameAndSpecialization:(Doctor*)doctor{
    NSLog(@"%@: What is your name and specialization?", self.name);
    NSLog(@"%@: My name is %@ and I specialize in %@", doctor.name, doctor.name, doctor.specialization);
}

-(void) requestMedication{
    NSLog(@"%@: I am not feeling well. I am %@.", self.name, self.symptom);
}


@end
