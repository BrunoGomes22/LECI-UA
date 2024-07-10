package aula08;

import java.util.ArrayList;
import java.util.List;

public class Department implements CompanyComponent {
    private String name;
    private List<CompanyComponent> components = new ArrayList<>();

    public Department(String name) {
        this.name = name;
    }

    public void addComponent(CompanyComponent component) {
        components.add(component);
    }

    public void removeComponent(CompanyComponent component) {
        components.remove(component);
    }

    @Override
    public void showDetails() {
        System.out.println("Department: " + name);
        for (CompanyComponent component : components) {
            component.showDetails();
        }
    }