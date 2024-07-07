package manager;

import entity.Employee;
import jakarta.enterprise.context.SessionScoped;
import jakarta.faces.application.FacesMessage;
import jakarta.faces.context.FacesContext;
import jakarta.inject.Inject;
import jakarta.inject.Named;
import service.EmployeeService;

import java.io.Serializable;
import java.util.List;
import java.util.Optional;

@SessionScoped
@Named
public class EmployeeManager implements Serializable {
    @Inject
    private EmployeeService employeeService;

    private Employee employee = null;

    public List<Employee> getAllEmployees() {
        return employeeService.getAllEmployees();
    }

    public void getFistEmployee() {
        Optional<Employee> result = getAllEmployees().stream().findFirst();
        if (result.isPresent()) {
            employee = result.get();
            FacesContext.getCurrentInstance().
                    addMessage(null, new FacesMessage(FacesMessage.SEVERITY_INFO, "First element", employee.getName()));
        }
    }

    public Employee getEmployee() {
        return employee;
    }

}
