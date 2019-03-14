package com.zhangying.po;

import java.io.Serializable;
import java.util.Date;

/** 薪金 */
public class Stipend implements Serializable {
    private Long id;		//薪金信息编号
    private String name;	//员工姓名
    private float basic;	//基本薪金
    private Date granttime;	// 工资发放时间
    private float duty;		//全勤奖
    private float punishment;//罚款
    private float other;	//额外补助
    private float totalize;	//总计

    public Stipend(String name, float basic, Date granttime, float duty, float punishment, float other, float totalize) {
        this.name = name;
        this.basic = basic;
        this.granttime = granttime;
        this.duty = duty;
        this.punishment = punishment;
        this.other = other;
        this.totalize = totalize;
    }

    /** default constructor */
    public Stipend() {
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

    public Float getBasic() {
        return this.basic;
    }

    public void setBasic(Float basic) {
        this.basic = basic;
    }




    /**
     * @return Returns the granttime.
     */
    public Date getGranttime() {
        return granttime;
    }
    /**
     * @param granttime The granttime to set.
     */
    public void setGranttime(Date granttime) {
        this.granttime = granttime;
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

}
