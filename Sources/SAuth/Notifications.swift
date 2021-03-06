//
//  Notifications.swift
//  SAuth
//
//  Created by Kyle Jessup on 2018-02-28.
//

import Foundation
import PerfectNotifications

func initializeNotifications() throws {
	guard let notifications = globalConfig.notifications else {
		return
	}
	NotificationPusher.addConfigurationAPNS(
		name: sauthNotificationsConfigurationName,
		production: notifications.production,
		keyId: notifications.keyId,
		teamId: notifications.teamId,
		privateKeyPath: "\(configDir)\(notifications.keyName)")
}
