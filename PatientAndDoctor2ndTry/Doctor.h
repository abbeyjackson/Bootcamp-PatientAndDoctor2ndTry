//
//  Doctor.h
//  PatientAndDoctor2ndTry
//
//  Created by Abegael Jackson on 2015-05-18.
//  Copyright (c) 2015 Abegael Jackson. All rights reserved.
//

#import "DoctorOffice.h"
@class Patient;

@interface Doctor : NSObject

@property (nonatomic, weak) NSString *name;
@property (nonatomic, weak) NSString *specialization;
@property (nonatomic, strong) NSMutableArray *patients;
@property (nonatomic, weak) DoctorOffice *doctorOffice;

-(instancetype)initWithName:(NSString*)name andSpecialization:(NSString*)specialization;

-(void)doctorAcceptPatient:(Patient*)patient;

-(void)givePatientPrescription:(Patient*)patient;

@end
