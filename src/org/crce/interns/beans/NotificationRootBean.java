/**
 * 
 */
package org.crce.interns.beans;

import java.util.List;

import org.crce.interns.beans.NotificationBean;

/**
 * @author Nevil Dsouza
 *
 */
public class NotificationRootBean {

	private List<NotificationBean> notifications ;

	
	
	public List<NotificationBean> getNotifications() {
		return notifications;
	}

	public void setNotifications(List<NotificationBean> notifications) {
		this.notifications = notifications;
	}

}
