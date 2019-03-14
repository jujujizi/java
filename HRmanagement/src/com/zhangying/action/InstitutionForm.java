package com.zhangying.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

import com.zhangying.po.Institution;
import com.zhangying.tool.DateUtil;

/**
 * @author BWeiMing
 *
 */
public class InstitutionForm extends ActionForm {

    /** identifier field */
    private Long id;

    /** nullable persistent field */
    private String name;

    /** nullable persistent field */
    private String reason;

    /** nullable persistent field */
    private String explain;

    /** nullable persistent field */
    private String createtime;

    /** full constructor */
    public void reset(ActionMapping arg0, HttpServletRequest arg1) {
        this.name = null;
        this.reason = null;
        this.explain = null;
        this.createtime = null;
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

    public String getReason() {
        return this.reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    public String getExplain() {
        return this.explain;
    }

    public void setExplain(String explain) {
        this.explain = explain;
    }

    public String getCreatetime() {
        return this.createtime;
    }

    public void setCreatetime(String createtime) {
        this.createtime = createtime;
    }

    public String toString() {
        StringBuffer toStr = new StringBuffer();
        toStr.append("[Institution] = [\n");
        toStr.append("    id = " + this.id + ";\n");
        toStr.append("    name = " + this.name + ";\n");
        toStr.append("    reason = " + this.reason + ";\n");
        toStr.append("    createtime = " + this.createtime+ ";\n");
        toStr.append("    explain = " + this.explain + ";\n");
        toStr.append("    ];\n");
        return toStr.toString();
    }

    public Institution populate(){
        Institution i=new Institution();
        i.setCreatetime(DateUtil.parseToDate(this.getCreatetime(),DateUtil.yyyyMMddHHmmss));
        i.setExplain(this.getExplain());
        i.setId(this.getId());
        i.setName(this.getName());
        i.setReason(this.getReason());
        return i;

    }

    public ActionErrors validate(ActionMapping arg0, HttpServletRequest arg1) {
        return null;
    }
}
