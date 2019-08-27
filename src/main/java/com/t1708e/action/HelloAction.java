package com.t1708e.action;

import com.opensymphony.xwork2.ActionSupport;
import com.t1708e.util.HibernateUtil;
import org.hibernate.Session;

public class HelloAction extends ActionSupport {
//    private Student student = new Student();
//    private  String name;
//    private List<Student> students = new ArrayList<Student>();
//    public Student getStudent() {
//        return student;
//    }
//
//    public List<Student> getStudents() {
//        return students;
//    }
//
//    public void setStudents(List<Student> students) {
//        this.students = students;
//    }
//
//    public void setStudent(Student student) {
//        this.student = student;
//    }
//
//    public String getName() {
//        return name;
//    }
//
//    public void setName(String name) {
//        this.name = name;
//    }
//
//    public String hello(){
//        Session session = HibernateUtil.getSession();
//
//        students = session.createCriteria(Student.class).list();
//
//        return SUCCESS;
//    }
//
//    public String save(){
//        Session session = HibernateUtil.getSession();
//        session.beginTransaction();
//        session.save(student);
//        session.getTransaction().commit();
//        session.close();
//        System.out.println(student.getName());
//        return SUCCESS;
//    }
}
