package dto;


import java.time.LocalDate;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.Data;
@Data
@Entity
public class student {
	
	@Id
	@GeneratedValue(strategy =GenerationType.IDENTITY)
	int id;
	String name ;
    String email ;
    String mobile;
    LocalDate Date;
    String gender;
    int englishMarks;
    int mathMarks;
    int scienceMarks;
    int total;
    double percentage;
    String result;
    

}
