package com.zhangying.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.HibernateException;

import com.zhangying.dao.InstitutionDao;
import com.zhangying.po.Institution;

/**
 * @author BWeiMing
 *
 */
public class InstitutionAction extends Action {
    private InstitutionDao dao=new InstitutionDao();

    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response) throws Exception {

        String action =request.getParameter("action");
        System.out.println("\nInstitutionAction*********************action="+action);
        if(action==null||"".equals(action)){
            return mapping.findForward("error");
        }else if("listinstitution".equals(action)){
            return listInstitution(mapping,form,request,response);
        }else if("addinstitution".equals(action)){
            return addInstitution(mapping,form,request,response);
        }else if("updateinstitution".equals(action)){
            return updateInstitution(mapping,form,request,response);
        }else if("deleteinstitution".equals(action)){
            return deleteInstitution(mapping,form,request,response);
        }else if("detailinstitution".equals(action)){
            return detailInstitution(mapping,form,request,response);
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
    private ActionForward detailInstitution(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws HibernateException {
        Long id=new Long(request.getParameter("id"));
        Institution i=dao.loadInstitution(id.longValue());
        request.setAttribute("institution",i);
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
    private ActionForward deleteInstitution(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws HibernateException {
        Long id=new Long(request.getParameter("id"));
        Institution i=new Institution();
        i.setId(id);
        dao.deleteInstitution(i);
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
    private ActionForward updateInstitution(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws HibernateException {
        InstitutionForm institutionForm=(InstitutionForm)form;
        Institution i=institutionForm.populate();
        dao.updateInstitution(i);
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
    private ActionForward addInstitution(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws HibernateException {
        InstitutionForm institutionForm=(InstitutionForm)form;
        Institution i=institutionForm.populate();
        dao.addInstitution(i);
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
    private ActionForward listInstitution(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws HibernateException {
        request.setAttribute("list",dao.listInstitution());
        return mapping.findForward("success");
    }

}
