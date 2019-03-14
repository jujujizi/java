package com.zhangying.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

import com.zhangying.po.Performance;
import com.zhangying.tool.DateUtil;

/**
 * @author f(x)º¯Êý
 *
 */
public class PerformanceForm extends ActionForm {

    /** identifier field */
    private Long id;

    /** nullable persistent field */
    private float score;

    /** nullable persistent field */
    private float addmoney;

    /** nullable persistent field */
    private String content;

    /** nullable persistent field */
    private String createtime;

    /** full constructor */
    public void reset(ActionMapping arg0, HttpServletRequest arg1) {
        this.score = 0;
        this.addmoney = 0;
        this.content = null;
        this.createtime = null;
    }

    public Long getId() {
        return this.id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public float getScore() {
		return score;
	}

	public void setScore(float score) {
		this.score = score;
	}

	public float getAddmoney() {
		return addmoney;
	}

	public void setAddmoney(float addmoney) {
		this.addmoney = addmoney;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getCreatetime() {
		return createtime;
	}

	public void setCreatetime(String createtime) {
		this.createtime = createtime;
	}

	public String toString() {
        StringBuffer toStr = new StringBuffer();
        toStr.append("[Performence] = [\n");
        toStr.append("    id = " + this.id + ";\n");
        toStr.append("    score = " + this.score + ";\n");
        toStr.append("    addmoney = " + this.addmoney + ";\n");
        toStr.append("    createtime = " + this.createtime+ ";\n");
        toStr.append("    content = " + this.content + ";\n");
        toStr.append("    ];\n");
        return toStr.toString();
    }

    public Performance populate(){
        Performance i=new Performance();
        i.setCreatetime(DateUtil.parseToDate(this.getCreatetime(),DateUtil.yyyyMMddHHmmss));
        i.setScore(this.getScore());
        i.setId(this.getId());
        i.setAddmoney(this.getAddmoney());
        i.setContent(this.getContent());
        return i;

    }

    public ActionErrors validate(ActionMapping arg0, HttpServletRequest arg1) {
        return null;
    }
}
