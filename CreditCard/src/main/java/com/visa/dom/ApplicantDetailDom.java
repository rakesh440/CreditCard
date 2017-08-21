package com.visa.dom;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;


	@Entity
	@Table(name = "VISA_APPLICANT_DTLS")
	@SequenceGenerator(name = "VISA_APPLICANT_DTLS_SEQ", sequenceName = "VISA_APPLICANT_DTLS_SEQ")
	public class ApplicantDetailDom {

		private static final long serialVersionUID = 92327730912581631L;

		@Id
		@GeneratedValue(generator = "VISA_APPLICANT_DTLS_SEQ", strategy = GenerationType.AUTO)
	    @Column(name = "VISA_APPLICANT_ID")
		private Integer id;	

		@Column(name = "FIRST_NAME")
		private String firstName;
		
		@OneToOne
		private AddressDom addressDom;

		/*public AddressDom getAddressDom() {
			return addressDom;
		}

		public void setAddressDom(AddressDom addressDom) {
			this.addressDom = addressDom;
		}
*/
		@Column(name = "LAST_NAME")
		private String LastName;
		
		@Column(name = "ADDR_ID")
		private Integer addrId;
		 
		@Column(name = "LICENSE_NUMBER")
		private String licenseNumber;
		
		@Column(name = "DATE_OF_BIRTH")
		private Date dateOfBirth;
			
		@Column(name = "EMAIL")
		private String email;
		 
		@Column(name = "NATIONALITY")
		private String nationality;

		 
		@Column(name = "GENDER")
		private String gender;
		 
		
		public String getFirstName() {
			return firstName;
		}

		public void setFirstName(String firstName) {
			this.firstName = firstName;
		}

		public String getLastName() {
			return LastName;
		}

		public void setLastName(String lastName) {
			LastName = lastName;
		}

		public Integer getAddrId() {
			return addrId;
		}

		public void setAddrId(Integer addrId) {
			this.addrId = addrId;
		}

		public String getLicenseNumber() {
			return licenseNumber;
		}

		public void setLicenseNumber(String licenseNumber) {
			this.licenseNumber = licenseNumber;
		}

		public Date getDateOfBirth() {
			return dateOfBirth;
		}

		public void setDateOfBirth(Date dateOfBirth) {
			this.dateOfBirth = dateOfBirth;
		}

		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		public String getNationality() {
			return nationality;
		}

		public void setNationality(String nationality) {
			this.nationality = nationality;
		}

		public String getGender() {
			return gender;
		}

		public void setGender(String gender) {
			this.gender = gender;
		}

		public Integer getId() {
			return id;
		}

		public void setId(Integer id) {
			this.id = id;
			
		}

		public AddressDom getAddressDom() {
			return addressDom;
		}

		public void setAddressDom(AddressDom addressDom) {
			this.addressDom = addressDom;
		}

	}


