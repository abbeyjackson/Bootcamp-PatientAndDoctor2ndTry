//
//  main.m
//  PatientAndDoctor2ndTry
//
//  Created by Abegael Jackson on 2015-05-18.
//  Copyright (c) 2015 Abegael Jackson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    
    DoctorOffice *doctorOffice = [[DoctorOffice alloc]init];
    
    Doctor *aDoctor = [[Doctor alloc] initWithName:@"Dr. Who" andSpecialization:@"Space Medicine"];
    
    aDoctor.doctorOffice = doctorOffice;
    
    Patient *aPatient = [[Patient alloc]initWithName:@"Rose Tyler" age:27 symptom:@"dizzy" andHasHealthCard:YES];
    
    [aPatient visitDoctor:aDoctor];
    
    
    
    return 0;
}
