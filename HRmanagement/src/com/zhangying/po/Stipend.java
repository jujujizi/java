package com.zhangying.po;

import java.io.Serializable;
import java.util.Date;

/** н�� */
public class Stipend implements Serializable {
    private Long id;		//н����Ϣ���
    private String name;	//Ա������
    private float basic;	//����н��
    private Date granttime;	// ���ʷ���ʱ��
    private float duty;		//ȫ�ڽ�
    private float punishment;//����
    private float other;	//���ⲹ��
    private float totalize;	//�ܼ�

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
