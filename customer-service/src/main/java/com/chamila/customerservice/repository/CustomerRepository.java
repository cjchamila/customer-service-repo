package com.chamila.customerservice.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.chamila.rentcloud.model.customer.Customer;

public interface CustomerRepository extends JpaRepository<Customer,Integer> {
}
