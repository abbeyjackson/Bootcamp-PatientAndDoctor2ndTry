//
//  Patient.h
//  PatientAndDoctor2ndTry
//
//  Created by Abegael Jackson on 2015-05-18.
//  Copyright (c) 2015 Abegael Jackson. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Doctor;

@interface Patient : NSObject

@property (nonatomic, weak) NSString *name;
@property (assign) int age;
@property (assign) BOOL hasHealthCard;
@property (nonatomic, weak) NSString *symptom;


-(instancetype)initWithName:(NSString*)name age:(int)age symptom:(NSString*)symptom andHasHealthCard:(BOOL)hasHealthCard;

-(void) visitDoctor:(Doctor*)doctor;

-(void) askDoctorNameAndSpecialization:(Doctor*)doctor;

-(void) requestMedication;

@end
