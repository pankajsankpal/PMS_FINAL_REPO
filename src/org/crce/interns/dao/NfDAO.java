/**
 * @author Nevil Dsouza
 *
 *	Main dao 
 *	DEPENDENCIES: , , 
 */

package org.crce.interns.dao;

import org.crce.interns.model.NotificationRoot;

public interface NfDAO {

	public void checkNf();
	public NotificationRoot getNotificationDatabase();
	public void displayXmlDatabaseInConsole ();
}
