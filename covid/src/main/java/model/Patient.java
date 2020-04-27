package model;


import javax.persistence.*;


@Entity
@Table(name = "patient")

public class Patient {
	
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	
	@Column(name = "img", length = 1000)
	private byte[] picByte;
	
	
	@Column(name = "name")
	private String name;
	
	@Column(name = "qualification")
	private String qualification;
	
	@Column(name = "area")
	private String area;
	
	@Column(name = "experience")
	private String experience;
	
	
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="description_id")
	private   PatientDescription  patientDescription;



	public byte[] getPicByte() {
		return picByte;
	}



	public void setPicByte(byte[] picByte) {
		this.picByte = picByte;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public String getQualification() {
		return qualification;
	}



	public void setQualification(String qualification) {
		this.qualification = qualification;
	}



	public String getArea() {
		return area;
	}



	public void setArea(String area) {
		this.area = area;
	}



	public String getExperience() {
		return experience;
	}



	public void setExperience(String experience) {
		this.experience = experience;
	}



	public PatientDescription getPatientDescription() {
		return patientDescription;
	}



	public void setPatientDescription(PatientDescription patientDescription) {
		this.patientDescription = patientDescription;
	}
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	
	

}
