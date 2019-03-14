package com.zhangying.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.HibernateException;

import com.zhangying.dao.JobDao;
import com.zhangying.po.Job;

public class JobAction extends Action {
    private JobDao dao=new JobDao();
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response) throws Exception {

        String action =request.getParameter("action");
        System.out.println("\nJobAction*********************action="+action);
        if(action==null||"".equals(action)){
            return mapping.findForward("error");
        }else if("listjob".equals(action)){
            return listJob(mapping,form,request,response);
        }else if("addjob".equals(action)){
            return addJob(mapping,form,request,response);
        }else if("deletejob".equals(action)){
            return deleteJob(mapping,form,request,response);
        }else if("updatejob".equals(action)){
            return updateJob(mapping,form,request,response);
        }else if("detailjob".equals(action)){
            return detailjob(mapping,form,request,response);
        }
        return mapping.findForward("error");
    }

	private ActionForward detailjob(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response){
		Long id=new Long(request.getParameter("id"));//获得参数id
		//System.out.println("id="+id);
		Job j=dao.loadJob(id.longValue());//加载该ID对应的应聘信息
		request.setAttribute("job",j);//将应聘信息对象设置到request范围
		return mapping.findForward("success");
	}

    private ActionForward updateJob(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response){
       // System.out.println("111111111111112221111");
        //System.out.println("form="+form);
    	JobForm jobform=(JobForm)form;
    	//System.out.println("jobform="+jobform);
        Job j=jobform.populate();
        j.setJob(jobform.getJob());
        //System.out.println("j="+j);
        dao.updateJob(j);
        return mapping.findForward("success");
    }

	private ActionForward deleteJob(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response){
	    Long id=new Long(request.getParameter("id"));//接受id参数
	    Job j=new Job();//新建一个Job对象
	    j.setId(id);//设置其id属性
	    dao.deleteJob(j);//调用dao对象完成Job对象的删除
	    return mapping.findForward("success");
	}

	private ActionForward addJob(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response){
		JobForm jobform=(JobForm)form;//获得JobForm
	    Job job=jobform.populate();//获得表单提交的应聘信息
	    dao.addJob(job);//调用DAO完成应聘信息的保存
	    return mapping.findForward("success");//跳转到success逻辑视图
	}

	private ActionForward listJob(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response){
	    String isstock=request.getParameter("isstock");//获得isstock参数
	    System.out.println("isstock="+isstock);
	    if(isstock==null||"".equals(isstock)){//如果isstock为null或者为空
	        request.setAttribute("list",
	        		dao.listJob(new Byte("0").byteValue()));//查询所有没入库的应聘信息
	    }else{
	        request.setAttribute("list",
	        		dao.listJob(new Byte("1").byteValue()));//查询所有入库的应聘信息
	    }
	    return mapping.findForward("success");
	}
}
