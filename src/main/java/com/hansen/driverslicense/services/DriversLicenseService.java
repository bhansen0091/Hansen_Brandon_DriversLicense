package com.hansen.driverslicense.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.hansen.driverslicense.models.License;
import com.hansen.driverslicense.models.Person;
import com.hansen.driverslicense.repositories.LicenseRepo;
import com.hansen.driverslicense.repositories.PersonRepo;

@Service
public class DriversLicenseService {

	private PersonRepo pRepo;
	private LicenseRepo lRepo;
	
	public DriversLicenseService(PersonRepo personRepo, LicenseRepo licenseRepo) {
			this.pRepo = personRepo;
			this.lRepo = licenseRepo;
	}
	
	public Person createPerson(Person person) {
		return pRepo.save(person);
	}
	
	public License createLicense(License license) {
		return lRepo.save(license);
	}
	
	public List<Person> getAllPeople() {
		return pRepo.findAll();
	}

	public List<License> getAllLicenses() {
		return lRepo.findAll();
	}
	
	public Person getPerson(Long id) {
		Optional<Person> optionalPerson = this.pRepo.findById(id);
		if (optionalPerson.isPresent()) {
			return optionalPerson.get();
		}
		return null;
	}
	
	
	
}
