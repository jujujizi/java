package com.zhangying.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.HibernateException;

import com.zhangying.dao.PerformanceDao;
import com.zhangying.po.Performance;

/**
 * @author f(x)º¯Êý
 *
 */
public class PerformanceAction extends Action {
    private PerformanceDao dao=new PerformanceDao();

    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response) throws Exception {

        String action =request.getParameter("action");
        System.out.println("\nPerformanceAction*********************action="+action);
        if(action==null||"".equals(action)){
            return mapping.findForward("error");
        }else if("listperformance".equals(action)){
            return listPerformance(mapping,form,request,response);
        }else if("addperformance".equals(action)){
            return addPerformance(mapping,form,request,response);
        }else if("updateperformance".equals(action)){
            return updatePerformance(mapping,form,request,response);
        }else if("deleteperformance".equals(action)){
            return deletePerformance(mapping,form,request,response);
        }else if("detailperformance".equals(action)){
            return detailPerformance(mapping,form,request,response);
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
    private ActionForward detailPerformance(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws HibernateException {
        Long id=new Long(request.getParameter("id"));
        Performance i=dao.loadPerformance(id.longValue());
        request.setAttribute("performance",i);
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
    private ActionForward deletePerformance(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws HibernateException {
        Long id=new Long(request.getParameter("id"));
        Performance i=new Performance();
        i.setId(id);
        dao.deletePerformance(i);
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
    private ActionForward updatePerformance(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws HibernateException {
        PerformanceForm performance=(PerformanceForm)form;
        Performance i=performance.populate();
        dao.updatePerformance(i);
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
    private ActionForward addPerformance(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws HibernateException {
        PerformanceForm PerformanceForm=(PerformanceForm)form;
        Performance i=PerformanceForm.populate();
        dao.addPerformance(i);
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
    private ActionForward listPerformance(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws HibernateException {
        request.setAttribute("list",dao.listPerformance());
        return mapping.findForward("success");
    }

}