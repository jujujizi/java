package com.zhangying.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.HibernateException;

import com.zhangying.dao.StipendDao;
import com.zhangying.po.Stipend;

public class StipendAction extends Action {
    private StipendDao dao=new StipendDao();

    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response) throws Exception {

        String action =request.getParameter("action");
        System.out.println("\nStipendAction*********************action="+action);
        if(action==null||"".equals(action)){
            return mapping.findForward("error");
        }else if("liststipend".equals(action)){
            return listStipend(mapping,form,request,response);
        }else if("addstipend".equals(action)){
            return addStipend(mapping,form,request,response);
        }else if("deletestipend".equals(action)){
            return deleteStipend(mapping,form,request,response);
        }else if("updatestipend".equals(action)){
            return updateStipend(mapping,form,request,response);
        }else if("detailstipend".equals(action)){
            return detailStipend(mapping,form,request,response);
        }
        return mapping.findForward("error");
    }

    /**
     * @param mapping
     * @param form
     * @param request
     * @param response
     * @return
     * @throws HibernateException
     */
    private ActionForward detailStipend(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws HibernateException {
        Long id=new Long(request.getParameter("id"));
        Stipend s=dao.loadStipend(id.longValue());
        request.setAttribute("stipend",s);
        return mapping.findForward("success");
    }

    /**
     * @param mapping
     * @param form
     * @param request
     * @param response
     * @return
     * @throws HibernateException
     */
    private ActionForward updateStipend(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws HibernateException {
        
    	StipendForm stipendForm=(StipendForm)form;
        Stipend s=stipendForm.populate();
        dao.updateStipend(s);
        return mapping.findForward("success");
    }

    /**
     * @param mapping
     * @param form
     * @param request
     * @param response
     * @return
     * @throws HibernateException
     */
    private ActionForward deleteStipend(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws HibernateException {
        Long id=new Long(request.getParameter("id").toString());
        Stipend s=new Stipend();
        s.setId(id);
        dao.deleteStipend(s);
        return mapping.findForward("success");
    }

    /**
     * @param mapping
     * @param form
     * @param request
     * @param response
     * @return
     * @throws HibernateException
     */
    private ActionForward addStipend(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws HibernateException {
    	StipendForm stipendForm=(StipendForm)form;
        Stipend s=stipendForm.populate();
        dao.addStipend(s);
        return mapping.findForward("success");
    }

    /**
     * @param mapping
     * @param form
     * @param request
     * @param response
     * @return
     * @throws HibernateException
     */
    private ActionForward listStipend(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws HibernateException {
        request.setAttribute("list",dao.listStipend());
        return mapping.findForward("success");
    }

}
