package com.zhangying.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

import com.zhangying.po.Job;
import com.zhangying.tool.DateUtil;

/**
 * @author BWeiMing
 *
 */
public class JobForm extends ActionForm {

    /** identifier field */
    private Long id;

    /** nullable persistent field */
    private String name;

    /** nullable persistent field */
    private Byte sex;

    /** nullable persistent field */
    private Integer age;

    /** nullable persistent field */
    private String job;

    /** nullable persistent field */
    private String specialty;

    /** nullable persistent field */
    private String experience;

    /** nullable persistent field */
    private String studyeffort;

    /** nullable persistent field */
    private String school;

    /** nullable persistent field */
    private String tel;

    /** nullable persistent field */
    private String content;

    /** nullable persistent field */
    private Byte isstock;

    private String createtime;

    private String email;
    private Byte health;

    /**
     * @return Returns the email.
     */
    public String getEmail() {
        return email;
    }
    /**
     * @param email The email to set.
     */
    public void setEmail(String email) {
        this.email = email;
    }
    /** full constructor */
    public void reset(ActionMapping arg0, HttpServletRequest arg1) {
        this.id=null;
        this.name = null;
        this.sex = null;
        this.health=null;
        this.age = null;
        this.job = null;
        this.specialty = null;
        this.experience = null;
        this.studyeffort = null;
        this.school = null;
        this.tel = null;
        this.createtime=null;
        this.email=null;
        this.content = null;
        this.isstock = null;
    }


    public Long getId() {
        return this.id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Byte getSex() {
        return this.sex;
    }

    public void setHealth(Byte health) {
        this.health = health;
    }
    public Byte getHealth() {
        return this.health;
    }

    public void setSex(Byte sex) {
        this.sex = sex;
    }

    public Integer getAge() {
        return this.age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getJob() {
        return this.job;
    }

    public void setJob(String job) {
        this.job = job;
    }

    public String getSpecialty() {
        return this.specialty;
    }

    public void setSpecialty(String specialty) {
        this.specialty = specialty;
    }

    public String getExperience() {
        return this.experience;
    }

    public void setExperience(String experience) {
        this.experience = experience;
    }

    public String getStudyeffort() {
        return this.studyeffort;
    }

    public void setStudyeffort(String studyeffort) {
        this.studyeffort = studyeffort;
    }

    public String getSchool() {
        return this.school;
    }

    public void setSchool(String school) {
        this.school = school;
    }

    public String getTel() {
        return this.tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getContent() {
        return this.content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Byte getIsstock() {
        return this.isstock;
    }

    public void setIsstock(Byte isstock) {
        this.isstock = isstock;
    }

    public String toString() {
        StringBuffer toStr = new StringBuffer();
        toStr.append("[JobForm] = [\n");
        toStr.append("    id = " + this.id + ";\n");
        toStr.append("    name = " + this.name + ";\n");
        toStr.append("    sex = " + this.sex + ";\n");
        toStr.append("    age = " + this.age + ";\n");
        toStr.append("    job = " + this.job + ";\n");
        toStr.append("    specialty = " + this.specialty + ";\n");
        toStr.append("    experience = " + this.experience + ";\n");
        toStr.append("    studyeffort = " + this.studyeffort + ";\n");
        toStr.append("    school = " + this.school + ";\n");
        toStr.append("    tel = " + this.tel + ";\n");
        toStr.append("    createtime = " + this.createtime+ ";\n");
        toStr.append("    email= " + this.email+ ";\n");
        toStr.append("    content = " + this.content+ ";\n");
        toStr.append("    isstock = " + this.isstock + ";\n");
        toStr.append("    ];\n");
        return toStr.toString();
    }

    public ActionErrors validate(ActionMapping arg0, HttpServletRequest arg1) {
        return null;
    }

    public Job populate(){
        Job j=new Job();
        j.setAge(this.getAge());
        j.setContent(this.getContent());
        j.setCreatetime(DateUtil.parseToDate(this.getCreatetime(),DateUtil.yyyyMMddHHmmss));
        j.setExperience(this.getExperience());
        j.setId(this.getId());
        j.setIsstock(this.getIsstock());
        j.setJob(this.getJob());
        j.setName(this.getName());
        j.setSchool(this.getSchool());
        j.setSex(this.getSex());
        j.setHealth(this.getHealth());
        j.setSpecialty(this.getSpecialty());
        j.setStudyeffort(this.getStudyeffort());
        j.setTel(this.getTel());
        j.setEmail(this.getEmail());
        return j;
    }
    /**
     * @return Returns the createtime.
     */
    public String getCreatetime() {
        return createtime;
    }
    /**
     * @param createtime The createtime to set.
     */
    public void setCreatetime(String createtime) {
        this.createtime = createtime;
    }
}
