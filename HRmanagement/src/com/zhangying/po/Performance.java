package com.zhangying.po;

import java.io.Serializable;
import java.util.Date;

/** 绩效 */
public class Performance implements Serializable {
    private Long id;		//绩效编号
    private float score;	//绩效分数
    private float addmoney;	//增加工资
    private String content;	//绩效说明
    private Date createtime;//创建时间

    /** full constructor */
    public Performance(float score, float addmoney, String content, Date createtime) {
        this.score = score;
        this.addmoney = addmoney;
        this.content = content;
        this.createtime = createtime;
    }

    /** default constructor */
    public Performance() {
    }
    
    public Long getId() {
		return id;
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

	public Date getCreatetime() {
		return createtime;
	}

	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}

	public String toString() {
        StringBuffer toStr = new StringBuffer();
        toStr.append("[Performance] = [\n");
        toStr.append("    id = " + this.id + ";\n");
        toStr.append("    content = " + this.content + ";\n");
        toStr.append("    score = " + this.score + ";\n");
        toStr.append("    createtime = " + this.createtime+ ";\n");
        toStr.append("    addmoney = " + this.addmoney + ";\n");
        toStr.append("    ];\n");
        return toStr.toString();
    }

}
