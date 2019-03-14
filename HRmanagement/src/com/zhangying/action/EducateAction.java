package com.zhangying.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.HibernateException;

import com.zhangying.dao.EducateDao;
import com.zhangying.po.Educate;
/**
 * @author BWeiMing
 *
 */
public class EducateAction extends Action {
    private EducateDao dao=new EducateDao();
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response) throws Exception {

        String action =request.getParameter("action");
        System.out.println("\nEducateAction*********************action="+action);
        if(action==null||"".equals(action)){
            return mapping.findForward("error");
        }else if("listeducate".equals(action)){
            return listEducate(mapping,form,request,response);
        }else if("addeducate".equals(action)){
            return addEducate(mapping,form,request,response);
        }else if("deleteeducate".equals(action)){
            return deleteEducate(mapping,form,request,response);
        }else if("detaileducate".equals(action)){
            return detailEducate(mapping,form,request,response);
        }else if("updateeducate".equals(action)){
            return updateEducate(mapping,form,request,response);
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
    private ActionForward updateEducate(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws HibernateException {
        EducateForm educateForm=(EducateForm)form;
        Educate e=educateForm.populate();
        dao.updateEducate(e);
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
    private ActionForward detailEducate(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws HibernateException {
        Long id=new Long(request.getParameter("id"));
        Educate e = dao.loadEducate(id.longValue());
        System.out.println(e.getName());
        request.setAttribute("educate",e);
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
    private ActionForward deleteEducate(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws HibernateException {
        Long id=new Long(request.getParameter("id").toString());
        Educate e=new Educate();
        e.setId(id);
        dao.deleteEducate(e);
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
    private ActionForward addEducate(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws HibernateException {
        EducateForm educateForm=(EducateForm)form;
        Educate e=educateForm.populate();
        dao.addEducate(e);
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
    private ActionForward listEducate(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws HibernateException {
        String educate=request.getParameter("educate");
        if(educate==null||"".equals(educate)||"0".equals(educate)){
            request.setAttribute("list",dao.listEducate(new Byte("0").byteValue()));
        }else{
            request.setAttribute("list",dao.listEducate(new Byte("1").byteValue()));
        }
        return mapping.findForward("success");
    }
}
