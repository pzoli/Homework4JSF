package service;

import entity.Employee;
import jakarta.ejb.Stateless;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.resource.spi.SecurityPermission;
import org.jboss.ejb3.annotation.SecurityDomain;

import java.io.Serializable;
import java.util.List;

@Stateless
@SecurityDomain("servlet-security-quickstart")
public class EmployeeService implements Serializable {
    @PersistenceContext
    private EntityManager em;
    public List<Employee> getAllEmployees() {
        return em.createNamedQuery("Employee.findAll").getResultList();
    }
}
