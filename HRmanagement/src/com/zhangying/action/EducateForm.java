package com.zhangying.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

import com.zhangying.po.Educate;
import com.zhangying.tool.DateUtil;

/**
 * @author BWeiMing
 *
 */
public class EducateForm extends ActionForm {
    /** identifier field */
    private Long id;

    /** nullable persistent field */
    private String name;

    /** nullable persistent field */
    private String purpose;

    /** nullable persistent field */
    private String begintime;

    /** nullable persistent field */
    private String endtime;

    /** nullable persistent field */
    private String datum;

    /** nullable persistent field */
    private String teacher;

    /** nullable persistent field */
    private String student;

    /** nullable persistent field */
    private String createtime;

    /** nullable persistent field */
    private String effect;

    /** nullable persistent field */
    private String summarize;

    private Byte educate;

    /** full constructor */
    public void reset(ActionMapping arg0, HttpServletRequest arg1) {
        this.name = null;
        this.purpose = null;
        this.begintime = null;
        this.endtime = null;
        this.datum = null;
        this.teacher = null;
        this.student = null;
        this.createtime = null;
        this.educate=null;
        this.effect = null;
        this.summarize = null;
    }


    public ActionErrors validate(ActionMapping arg0, HttpServletRequest arg1) {
        return null;
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

    public String getPurpose() {
        return this.purpose;
    }

    public void setPurpose(String purpose) {
        this.purpose = purpose;
    }

    public String getBegintime() {
        return this.begintime;
    }

    public void setBegintime(String begintime) {
        this.begintime = begintime;
    }

    public String getEndtime() {
        return this.endtime;
    }

    public void setEndtime(String endtime) {
        this.endtime = endtime;
    }

    public String getDatum() {
        return this.datum;
    }

    public void setDatum(String datum) {
        this.datum = datum;
    }

    public String getTeacher() {
        return this.teacher;
    }

    public void setTeacher(String teacher) {
        this.teacher = teacher;
    }

    public String getStudent() {
        return this.student;
    }

    public void setStudent(String student) {
        this.student = student;
    }

    public String getCreatetime() {
        return this.createtime;
    }

    public void setCreatetime(String createtime) {
        this.createtime = createtime;
    }

    public String getEffect() {
        return this.effect;
    }

    public void setEffect(String effect) {
        this.effect = effect;
    }

    public String getSummarize() {
        return this.summarize;
    }

    public void setSummarize(String summarize) {
        this.summarize = summarize;
    }

    public String toString() {
        StringBuffer toStr = new StringBuffer();
        toStr.append("[Educate] = [\n");
        toStr.append("    id = " + this.id + ";\n");
        toStr.append("    name = " + this.name + ";\n");
        toStr.append("    begintime = " + this.begintime+ ";\n");
        toStr.append("    endtime = " + this.endtime+ ";\n");
        toStr.append("    createtime = " + this.createtime+ ";\n");
        toStr.append("    purpose = " + this.purpose + ";\n");
        toStr.append("    datum = " + this.datum + ";\n");
        toStr.append("    teacher = " + this.teacher + ";\n");
        toStr.append("    student = " + this.student + ";\n");
        toStr.append("    educate = " + this.educate+ ";\n");
        toStr.append("    effect = " + this.effect + ";\n");
        toStr.append("    summarize = " + this.summarize + ";\n");
        toStr.append("    ];\n");
        return toStr.toString();
    }

    public Educate populate(){
        Educate e=new Educate();
        e.setBegintime(DateUtil.parseToDate(this.getBegintime(),DateUtil.yyyyMMdd));
        e.setCreatetime(DateUtil.parseToDate(this.getCreatetime(),DateUtil.yyyyMMddHHmmss));
        e.setDatum(this.getDatum());
        e.setEffect(this.getEffect());
        e.setEndtime(DateUtil.parseToDate(this.getEndtime(),DateUtil.yyyyMMdd));
        e.setId(this.getId());
        e.setName(this.getName());
        e.setPurpose(this.getPurpose());
        e.setStudent(this.getStudent());
        e.setSummarize(this.getSummarize());
        e.setEducate(this.getEducate());
        e.setTeacher(this.getTeacher());
        return e;
    }

    /**
     * @return Returns the educate.
     */
    public Byte getEducate() {
        return educate;
    }
    /**
     * @param educate The educate to set.
     */
    public void setEducate(Byte educate) {
        this.educate = educate;
    }
}
