package service;

import entity.Employee;
import jakarta.ejb.Stateless;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;

import java.io.Serializable;
import java.util.List;

@Stateless
public class EmployeeService implements Serializable {
    @PersistenceContext
    private EntityManager em;
    public List<Employee> getAllEmployees() {
        return em.createNamedQuery("Employee.findAll").getResultList();
    }
}
