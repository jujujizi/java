package com.zhangying.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

import com.zhangying.po.Stipend;
import com.zhangying.tool.DateUtil;
public class StipendForm extends ActionForm {

    public ActionErrors validate(ActionMapping arg0, HttpServletRequest arg1) {
        return null;
    }
    /** identifier field */
    private Long id;

    /** nullable persistent field */
    private String name;

    /** nullable persistent field */
    private float basic;

    /** nullable persistent field */
    private String granttime;

    /** nullable persistent field */
    private float duty;

    /** nullable persistent field */
    private float punishment;

    /** nullable persistent field */
    private float other;

    /** nullable persistent field */
    private float totalize;

    /** full constructor */
    public void reset(ActionMapping mapping,HttpServletRequest request) {
        this.name = null;
        this.basic = 0;
        this.granttime = null;
        this.duty = 0;
        this.punishment = 0;
        this.other = 0;
        this.totalize =0;
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

    public float getBasic() {
        return this.basic;
    }

    public void setBasic(float basic) {
        this.basic = basic;
    }

    public float getDuty() {
        return this.duty;
    }

    public void setDuty(float duty) {
        this.duty = duty;
    }



    public float getPunishment() {
        return this.punishment;
    }

    public void setPunishment(float punishment) {
        this.punishment = punishment;
    }

    public float getOther() {
        return this.other;
    }

    public void setOther(float other) {
        this.other = other;
    }

    public float getTotalize() {
        return this.totalize;
    }

    public void setTotalize(float totalize) {
        this.totalize = totalize;
    }

    public String toString() {
        StringBuffer toStr = new StringBuffer();
        toStr.append("[Stipend] = [\n");
        toStr.append("    id = " + this.id + ";\n");
        toStr.append("    name = " + this.name + ";\n");
        toStr.append("    basic = " + this.basic + ";\n");
        toStr.append("    granttime = " + this.granttime + ";\n");
        toStr.append("    duty = " + this.duty + ";\n");
        toStr.append("    punishment = " + this.punishment + ";\n");
        toStr.append("    other = " + this.other + ";\n");
        toStr.append("    totalize = " + this.totalize + ";\n");
        toStr.append("    ];\n");
        return toStr.toString();
    }

    public Stipend populate(){
        Stipend s=new Stipend();
        s.setBasic(this.getBasic());
        s.setDuty(this.getDuty());
        s.setId(this.getId());
        s.setGranttime(DateUtil.parseToDate(this.getGranttime(),DateUtil.yyyyMMdd));
        s.setName(this.getName());
        s.setOther(this.getOther());
        s.setPunishment(this.getPunishment());
        s.setTotalize(this.getTotalize());
        return s;
    }

    /**
     * @return Returns the granttime.
     */
    public String getGranttime() {
        return granttime;
    }
    /**
     * @param granttime The granttime to set.
     */
    public void setGranttime(String granttime) {
        this.granttime = granttime;
    }
}
