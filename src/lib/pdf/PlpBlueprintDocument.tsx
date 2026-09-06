import { Document, Page, Text, View, StyleSheet } from "@react-pdf/renderer";
import { PlpBlueprintContent } from "@/lib/plpBlueprint";

const PLUM_DARK = "#2B3A4C";
const TERRACOTTA = "#E2916E";
const TERRACOTTA_DARK = "#C97050";
const SAGE_DARK = "#729566";
const CREAM = "#F2E9DB";
const IVORY = "#FFFEFA";
const CHARCOAL = "#33303A";
const WARM_GRAY = "#6B6470";
const AMBER = "#F0B85E";
const BORDER = "#D9CBB4";

const styles = StyleSheet.create({
  page: { backgroundColor: IVORY, padding: 40, fontSize: 10.5, color: CHARCOAL, fontFamily: "Helvetica" },
  headerBand: { backgroundColor: PLUM_DARK, marginHorizontal: -40, marginTop: -40, padding: 28, marginBottom: 24 },
  wordmark: { color: IVORY, fontSize: 20, fontFamily: "Helvetica-Bold", letterSpacing: 1 },
  wordmarkAccent: { color: AMBER },
  tagline: { color: AMBER, fontSize: 9, letterSpacing: 2, marginTop: 4, fontFamily: "Helvetica-Bold" },
  titleRow: { marginBottom: 18 },
  title: { fontSize: 18, color: PLUM_DARK, fontFamily: "Helvetica-Bold", marginBottom: 4 },
  metaRow: { flexDirection: "row", gap: 16, marginTop: 6 },
  metaItem: { fontSize: 9.5, color: WARM_GRAY },
  metaLabel: { fontFamily: "Helvetica-Bold", color: CHARCOAL },
  section: { marginBottom: 16 },
  sectionTitle: { fontSize: 12, color: TERRACOTTA_DARK, fontFamily: "Helvetica-Bold", marginBottom: 6, textTransform: "uppercase", letterSpacing: 0.5 },
  bodyText: { fontSize: 10, lineHeight: 1.5, color: CHARCOAL },
  twoCol: { flexDirection: "row", gap: 20 },
  col: { flex: 1 },
  pillBox: { backgroundColor: CREAM, borderRadius: 6, padding: 10, marginBottom: 6 },
  bulletRow: { flexDirection: "row", marginBottom: 4 },
  bulletDot: { width: 10, fontSize: 10, color: TERRACOTTA_DARK },
  bulletText: { flex: 1, fontSize: 10, lineHeight: 1.4, color: CHARCOAL },
  scheduleRow: { flexDirection: "row", borderBottomWidth: 1, borderBottomColor: BORDER, paddingVertical: 6 },
  scheduleHeaderRow: { flexDirection: "row", borderBottomWidth: 1.5, borderBottomColor: PLUM_DARK, paddingBottom: 6, marginBottom: 2 },
  scheduleCol1: { width: "28%", fontSize: 9.5 },
  scheduleCol2: { width: "30%", fontSize: 9.5 },
  scheduleCol3: { width: "42%", fontSize: 9.5 },
  scheduleHeaderText: { fontFamily: "Helvetica-Bold", color: PLUM_DARK, fontSize: 9 },
  focusBlock: { marginBottom: 10, paddingLeft: 10, borderLeftWidth: 2, borderLeftColor: SAGE_DARK },
  focusSubject: { fontSize: 11, fontFamily: "Helvetica-Bold", color: PLUM_DARK, marginBottom: 2 },
  focusGoal: { fontSize: 9.5, color: WARM_GRAY, marginBottom: 4, fontStyle: "italic" },
  noteBox: { backgroundColor: PLUM_DARK, borderRadius: 8, padding: 14, marginTop: 4 },
  noteText: { fontSize: 10.5, lineHeight: 1.5, color: IVORY },
  footer: { position: "absolute", bottom: 24, left: 40, right: 40, borderTopWidth: 1, borderTopColor: BORDER, paddingTop: 10 },
  footerText: { fontSize: 7.5, color: WARM_GRAY, textAlign: "center", lineHeight: 1.4 },
});

export function PlpBlueprintDocument({
  childName,
  gradeLevel,
  planLabel,
  generatedDate,
  content,
}: {
  childName: string;
  gradeLevel: string;
  planLabel: string;
  generatedDate: string;
  content: PlpBlueprintContent;
}) {
  return (
    <Document title={`${childName} — Su Mira Learning Blueprint`} author="Su Mira Learning">
      <Page size="LETTER" style={styles.page} wrap>
        <View style={styles.headerBand}>
          <Text style={styles.wordmark}>SU MIRA <Text style={styles.wordmarkAccent}>LEARNING</Text></Text>
          <Text style={styles.tagline}>PERSONALIZED LEARNING BLUEPRINT</Text>
        </View>

        <View style={styles.titleRow}>
          <Text style={styles.title}>{childName}&rsquo;s Personalized Learning Blueprint</Text>
          <View style={styles.metaRow}>
            <Text style={styles.metaItem}><Text style={styles.metaLabel}>Grade: </Text>{gradeLevel}</Text>
            <Text style={styles.metaItem}><Text style={styles.metaLabel}>Plan: </Text>{planLabel}</Text>
            <Text style={styles.metaItem}><Text style={styles.metaLabel}>Prepared: </Text>{generatedDate}</Text>
          </View>
        </View>

        <View style={styles.section}>
          <Text style={styles.sectionTitle}>Learner Overview</Text>
          <Text style={styles.bodyText}>{content.overview}</Text>
        </View>

        <View style={styles.section}>
          <Text style={styles.sectionTitle}>How {childName} Learns Best</Text>
          <Text style={styles.bodyText}>{content.learning_style_summary}</Text>
        </View>

        <View style={styles.section}>
          <View style={styles.twoCol}>
            <View style={styles.col}>
              <Text style={styles.sectionTitle}>Strengths</Text>
              <View style={styles.pillBox}>
                {content.strengths.map((s, i) => (
                  <View style={styles.bulletRow} key={i}>
                    <Text style={styles.bulletDot}>•</Text>
                    <Text style={styles.bulletText}>{s}</Text>
                  </View>
                ))}
              </View>
            </View>
            <View style={styles.col}>
              <Text style={styles.sectionTitle}>Growth Areas</Text>
              <View style={styles.pillBox}>
                {content.growth_areas.map((s, i) => (
                  <View style={styles.bulletRow} key={i}>
                    <Text style={styles.bulletDot}>•</Text>
                    <Text style={styles.bulletText}>{s}</Text>
                  </View>
                ))}
              </View>
            </View>
          </View>
        </View>

        <View style={styles.section} wrap={false}>
          <Text style={styles.sectionTitle}>Suggested Weekly Schedule</Text>
          <View style={styles.scheduleHeaderRow}>
            <Text style={[styles.scheduleCol1, styles.scheduleHeaderText]}>When</Text>
            <Text style={[styles.scheduleCol2, styles.scheduleHeaderText]}>Focus</Text>
            <Text style={[styles.scheduleCol3, styles.scheduleHeaderText]}>Suggested Activity</Text>
          </View>
          {content.weekly_schedule.map((row, i) => (
            <View style={styles.scheduleRow} key={i}>
              <Text style={styles.scheduleCol1}>{row.block}</Text>
              <Text style={styles.scheduleCol2}>{row.focus}</Text>
              <Text style={styles.scheduleCol3}>{row.activity}</Text>
            </View>
          ))}
        </View>

        <View style={styles.section}>
          <Text style={styles.sectionTitle}>Subject Focus Areas &amp; Activity Suggestions</Text>
          {content.focus_areas.map((fa, i) => (
            <View style={styles.focusBlock} key={i} wrap={false}>
              <Text style={styles.focusSubject}>{fa.subject}</Text>
              <Text style={styles.focusGoal}>Goal: {fa.goal}</Text>
              {fa.activities.map((a, j) => (
                <View style={styles.bulletRow} key={j}>
                  <Text style={styles.bulletDot}>•</Text>
                  <Text style={styles.bulletText}>{a}</Text>
                </View>
              ))}
            </View>
          ))}
        </View>

        <View style={styles.section} wrap={false}>
          <Text style={styles.sectionTitle}>A Note for Your Family</Text>
          <View style={styles.noteBox}>
            <Text style={styles.noteText}>{content.encouragement_note}</Text>
          </View>
        </View>

        <View style={styles.footer} fixed>
          <Text style={styles.footerText}>
            © {new Date().getFullYear()} Su Mira Learning, an educational program of Burbrella Learning Academy Inc. All rights reserved.{"\n"}
            This Personalized Learning Blueprint is prepared exclusively for {childName}&rsquo;s family and is confidential. Not for redistribution or resale.
          </Text>
        </View>
      </Page>
    </Document>
  );
}
