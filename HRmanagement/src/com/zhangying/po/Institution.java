package com.zhangying.po;

import java.io.Serializable;
import java.util.Date;

/** 奖惩 */
public class Institution implements Serializable {
    private Long id;		//奖惩编号
    private String name;	//奖惩名称
    private String reason;	//奖惩原因
    private String explain;	//奖惩说明
    private Date createtime;//创建时间

    /** full constructor */
    public Institution(String name, String reason, String explain, Date createtime) {
        this.name = name;
        this.reason = reason;
        this.explain = explain;
        this.createtime = createtime;
    }

    /** default constructor */
    public Institution() {
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

    public Date getCreatetime() {
        return this.createtime;
    }

    public void setCreatetime(Date createtime) {
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

}
