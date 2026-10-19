import WidgetKit
import SwiftUI
import os

/// Stream the sizes from a simulator with:
/// xcrun simctl spawn booted log stream --style compact --predicate 'eventMessage CONTAINS "PROBE"'
let log = Logger(subsystem: "WidgetSizeProbe", category: "size")

struct Entry: TimelineEntry {
    let date: Date
    let family: WidgetFamily
    let displaySize: CGSize
}

struct Provider: TimelineProvider {
    func placeholder(in context: Context) -> Entry {
        entry(context, source: "placeholder")
    }

    func getSnapshot(in context: Context, completion: @escaping (Entry) -> Void) {
        completion(entry(context, source: "snapshot"))
    }

    func getTimeline(in context: Context, completion: @escaping (Timeline<Entry>) -> Void) {
        completion(Timeline(entries: [entry(context, source: "timeline")], policy: .never))
    }

    private func entry(_ context: Context, source: String) -> Entry {
        let size = context.displaySize
        log.notice("PROBE source=\(source, privacy: .public) family=\(String(describing: context.family), privacy: .public) displaySize=\(format(size), privacy: .public)")
        return Entry(date: .now, family: context.family, displaySize: size)
    }
}

/// `displaySize` is the real widget size. The widget gallery scales its previews,
/// so the `GeometryReader` size is smaller there.
struct ProbeView: View {
    let entry: Entry

    var body: some View {
        if entry.family == .accessoryInline {
            Text(format(entry.displaySize))
        } else {
            GeometryReader { proxy in
                VStack(spacing: 2) {
                    Text(String(describing: entry.family))
                    Text(format(entry.displaySize))
                        .bold()
                    Text("view \(format(proxy.size))")
                        .foregroundStyle(.secondary)
                }
                .font(.caption2)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .containerBackground(.fill.tertiary, for: .widget)
        }
    }
}

func format(_ size: CGSize) -> String {
    func value(_ v: CGFloat) -> String {
        v.rounded() == v ? String(Int(v)) : String(format: "%.2f", v)
    }
    return "\(value(size.width)) x \(value(size.height))"
}

@main
struct SizeProbe: Widget {
    var body: some WidgetConfiguration {
        StaticConfiguration(kind: "SizeProbe", provider: Provider()) { ProbeView(entry: $0) }
            .configurationDisplayName("Size Probe")
            .description("Shows the size of the widget in points.")
            .supportedFamilies([
                .systemSmall, .systemMedium, .systemLarge, .systemExtraLarge, .systemExtraLargePortrait,
                .accessoryCircular, .accessoryRectangular, .accessoryInline,
            ])
    }
}
