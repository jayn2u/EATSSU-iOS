//
//  NotificationManager.swift
//  EATSSU
//
//  Created by Jiwoong CHOI on 9/10/24.
//

import Foundation
import UserNotifications

class NotificationManager {
  
  // MARK: - Properties
  
  static let shared = NotificationManager()

  // MARK: - Methods

  /// 평일 11시에 앱의 유입을 유도하는 알림을 발송하는 메소드
  ///
  /// - Title : 🤔 오늘 밥 뭐 먹지…
  /// - Body : 오늘의 학식을 확인해보세요!
  func scheduleWeekday11AMNotification() {
    let center = UNUserNotificationCenter.current()

    // 알림 콘텐츠 설정
    let content = UNMutableNotificationContent()

    content.title = TextLiteral.Notification.dailyWeekdayNotificationTitle
    content.body = TextLiteral.Notification.dailyWeekdayNotificationBody
    content.sound = .default

    // 반복할 요일 및 시간 설정 (평일 오전 11시)
    let calendar = Calendar.current
    let weekdays = [2, 3, 4, 5, 6]  // 월, 화, 수, 목, 금 (Calendar에서 1이 일요일)

    for weekday in weekdays {
      var dateComponents = DateComponents()
      dateComponents.hour = 11
      dateComponents.minute = 0
      dateComponents.weekday = weekday

      let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: true)

      // 고유한 식별자를 위해 weekday를 사용
      let identifier = "weekdayNotification-\(weekday)"
      let request = UNNotificationRequest(
        identifier: identifier, content: content, trigger: trigger)

      // 알림 등록
      center.add(request) { error in
        if let error = error {
          print("알림 등록 간 에러 메시지: \(error.localizedDescription)")
        }
      }
    }
  }

  /// 앱 실행 시 알림 발송 권한을 요청하는 팝업 호출 메소드
  func requestNotificationPermission() {
    UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) {
      granted, error in
      if granted {
        print("알림 권한 승인됨")
      } else {
        print("알림 권한 거부됨")
      }
    }
  }

}
