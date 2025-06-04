package com.flalottery.secondchance.action;

import java.sql.SQLException;
import java.util.Map;

import javax.servlet.ServletContext;

import org.apache.commons.lang3.Validate;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;
import org.apache.struts2.util.ServletContextAware;
import org.jdom2.output.Format;
import org.jdom2.output.XMLOutputter;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.flalottery.secondchance.bean.MessageBean;
import com.flalottery.secondchance.dao.PromotionDAO;
import com.flalottery.secondchance.dataobject.LoginDO;
import com.flalottery.secondchance.domain.Constants;
import com.flalottery.secondchance.domain.Promotion;
import com.flalottery.secondchance.utility.HtmlOutputProcessor;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.Preparable;

/**
 * Default action for this Second Chance application. All other actions within
 * this application should inherit from this class.
 * 
 */
public class SecondChanceAction extends ActionSupport implements ServletContextAware, SessionAware, Preparable{

	private static final long serialVersionUID = 2094533923691962795L;

	private static final Logger logger = LoggerFactory.getLogger(SecondChanceAction.class);
	protected static final String DUPLICATE = "duplicate";
	protected static final String MESSAGE = "message";
	protected static final String MESSAGE_NO_LOGIN = "messageNoLogin";
	protected static final String REDIRECT = "redirect";
	protected static final String HOME = "home";
	protected static final String INPUT = "input";
	
	/* Added for the Password Encryption */
	protected static final String ENFORCE_PASSWORD_CHANGE = "forgotPasswordEnforced";
	
	
	protected Map<String, Object> session;

	protected MessageBean messages = new MessageBean();

	@Override
	public String execute() throws Exception {
		return SUCCESS;
	}

	@Override
	public void setSession(final Map<String, Object> session) {
		this.session = session;
	}

	public Map<String, Object> getSession() {
		return this.session;
	}

	public MessageBean getMessages() {
		return messages;
	}

	public void setMessages(final MessageBean messages) {
		this.messages = messages;
	}

	/**
	 * This is called before other methods and contains statements that must be
	 * executed no matter what other Action class method will be called.
	 * 
	 * When overriding {@link SecondChanceAction#prepare()}, it is encouraged to
	 * call super.prepare().
	 */
	@Override
	public void prepare() throws Exception {
		final Format newformat = Format.getPrettyFormat();
		final XMLOutputter outputter = new XMLOutputter(newformat);
		newformat.setOmitDeclaration(true);
		newformat.setExpandEmptyElements(true);
		newformat.setIndent("\t");
		outputter.setXMLOutputProcessor(new HtmlOutputProcessor());
	}

	public LoginDO getLoginDO() {
		return (LoginDO) session.get("loginDO");
	}

	/**
	 * Get all promotions from the ServletActionContext.
	 * 
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public Map<Integer, Promotion> getAllPromotions() {
		return (Map<Integer, Promotion>) ServletActionContext.getServletContext().getAttribute(Constants.ATTRIBUTE_PROMOTIONS);
	}

	/**
	 * Insert a new record. Used by the control method. Overridden by the
	 * subclass when necessary.
	 * 
	 * @return - HOME
	 * @throws Exception
	 *             - thrown if a system level exception occurs.
	 */
	protected String create() throws Exception {
		return HOME;
	}

	/**
	 * Read an existing record. Used by the control method. Overridden by the
	 * subclass when necessary.
	 * 
	 * @return - HOME
	 * @throws Exception
	 *             - thrown if a system level exception occurs.
	 */
	protected String read() throws Exception {
		return HOME;
	}

	/**
	 * Update an existing record. Used by the control method. Overridden by the
	 * subclass when necessary.
	 * 
	 * @return - HOME
	 * @throws Exception
	 *             - thrown if a system level exception occurs.
	 */
	protected String update() throws Exception {
		return HOME;
	}

	/**
	 * Delete an existing record. Used by the control method. Overridden by the
	 * subclass when necessary.
	 * 
	 * @return - HOME
	 * @throws Exception
	 *             - thrown if a system level exception occurs.
	 */
	protected String delete() throws Exception {
		return HOME;
	}

	/**
	 * The default case for AccountOperations. Used by the control method.
	 * Overridden by the subclass when necessary.
	 * 
	 * @return - HOME
	 * @throws Exception
	 *             - thrown if a system level exception occurs.
	 */
	protected String other() throws Exception {
		return HOME;
	}

	/**
	 * This is a default controller method for the standard create, read,
	 * update, delete and other operations.
	 * 
	 * @param hasRecordInTable
	 *            - Boolean to determine if a new record should be created.
	 * @param isSubmitted
	 *            - Boolean to determine if the form is has been submitted
	 * @param isDeleted
	 *            - Boolean to determine if the record should be deleted.
	 * @return - create(), read(), update(), delete(), or other();
	 * @throws Exception
	 *             - thrown if a system level exception occurs.
	 */
	protected String control(final Boolean hasRecordInTable, final Boolean isSubmitted, final Boolean isDeleted) throws Exception {
		if (hasRecordInTable) {
			if (isSubmitted) {
				if (isDeleted) {
					return delete();
				}
				return update();
			}
			return read();
		}
		if (isSubmitted) {
			return create();
		}
		return other();

	}

	/**
	 * Sets the current servlet context object.
	 * 
	 * @param context
	 *            - The servlet context to use
	 */
	@Override
	public void setServletContext(final ServletContext context) {
		Validate.notNull(context);
		if (null == context.getAttribute(Constants.ATTRIBUTE_PROMOTIONS)) {
			logger.debug("Adding promotions from database to context.");
			try {
				context.setAttribute(Constants.ATTRIBUTE_PROMOTIONS, new PromotionDAO().getAllPromotions());
			} catch (final SQLException e) {
				logger.warn("SQLEXCEPTION getAllPromotions(): " + e);
			}
		}
	}
}