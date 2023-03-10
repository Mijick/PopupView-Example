//
//  BottomPopup_PrivacyInfo.swift of PopupView-Example
//
//  Created by Tomasz Kurylik
//    - Twitter: https://twitter.com/tkurylik
//    - Mail: tomasz.kurylik@mijick.com
//
//  Copyright ©2023 Mijick. Licensed under MIT License.


import SwiftUI
import PopupView

struct BottomPopup_PrivacyInfo: BottomPopup {
    func configurePopup(popup: BottomPopupConfig) -> BottomPopupConfig { popup }
    func createContent() -> some View {
        VStack(alignment: .leading, spacing: 0) {
            createBar()
            Spacer.height(28)
            createTitle()
            Spacer.height(36)
            createDescription()
            Spacer.height(16)
            createTapToViewButton()
            Spacer.height(24)
            createButtons()
        }
        .padding(.top, 20)
        .padding(.bottom, 4)
        .padding(.horizontal, 28)
    }
}

private extension BottomPopup_PrivacyInfo {
    func createBar() -> some View {
        Capsule()
            .fill(Color.onBackgroundTertiary)
            .frame(width: 32, height: 6)
            .alignHorizontally(.center)
    }
    func createTitle() -> some View {
        Text("Privacy Info")
            .font(.interBold(22))
            .foregroundColor(.onBackgroundPrimary)
    }
    func createDescription() -> some View {
        Text("Proident adipisicing labore consectetur tempor eiusmod ullamco enim adipisicing eiusmod.")
            .font(.interRegular(15))
            .foregroundColor(.onBackgroundSecondary)
            .multilineTextAlignment(.leading)
            .fixedSize(horizontal: false, vertical: true)
    }
    func createTapToViewButton() -> some View {
        HStack(spacing: 0) {
            createTapToViewButtonLeftIcon()
            Spacer.width(16)
            createTapToViewButtonText()
            Spacer()
            createTapToViewButtonRightIcon()
        }
        .padding(.vertical, 20)
        .padding(.horizontal, 16)
        .background(Color.onBackgroundTertiary)
        .cornerRadius(8)
        .onTapGesture(perform: BottomPopup_Document().present)
    }
    func createButtons() -> some View {
        HStack(spacing: 8) {
            createCancelButton()
            createConfirmButton()
        }
    }
}

private extension BottomPopup_PrivacyInfo {
    func createTapToViewButtonLeftIcon() -> some View {
        Image("grid")
            .resizable()
            .foregroundColor(.onBackgroundPrimary)
            .frame(16)
    }
    func createTapToViewButtonText() -> some View {
        Text("Tap to view")
            .font(.interSemiBold(13.5))
            .foregroundColor(.onBackgroundPrimary)
    }
    func createTapToViewButtonRightIcon() -> some View {
        Image("arrow-right")
            .resizable()
            .foregroundColor(.onBackgroundPrimary)
            .frame(20)
    }
    func createCancelButton() -> some View {
        Text("Cancel")
            .font(.interBold(13))
            .foregroundColor(.onBackgroundSecondary)
            .frame(height: 44)
            .frame(maxWidth: .infinity)
            .background(Color.onBackgroundTertiary)
            .cornerRadius(8)
            .onTapGesture(perform: dismiss)
    }
    func createConfirmButton() -> some View {
        Text("Confirm")
            .font(.interBold(13))
            .foregroundColor(.white)
            .frame(height: 44)
            .frame(maxWidth: .infinity)
            .background(Color.primary)
            .cornerRadius(8)
            .onTapGesture(perform: dismiss)
    }
}

extension BottomPopup_PrivacyInfo {
    var id: String { "privacy-info" }
}
