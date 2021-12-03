//
//  IndicatorTitleLabel.swift
//  Pastpaper2021
//
//  Created by ZhuPinxi on 2021/12/4.
//

import SwiftUI

struct DisclosureIndicator: View {
    
    @ScaledMetric private var size: CGFloat = 13.5
    
    var body: some View {
        Image(systemName: "chevron.right")
            .foregroundColor(Color(.tertiaryLabel))
            .font(.system(size: size, weight: .semibold))
    }
}

struct TitleLabel: View {
    
    var title: String
    var subtitle: String
    
    @ScaledMetric private var verticalPaddingLength: CGFloat = 3
    
    init(_ title: String, subtitle: String) {
        self.title = title
        self.subtitle = subtitle
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.body)
                .foregroundColor(.primary)
            Text(subtitle)
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
        .padding(.vertical, verticalPaddingLength)
    }
}
