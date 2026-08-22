import { redirect } from "next/navigation";
import { getCurrentParent } from "@/lib/parentAuth";

export default async function ParentPortalGatewayPage() {
  const parent = await getCurrentParent();
  if (!parent) redirect("/parent-portal/login");
  if (!parent.email_verified) redirect("/parent-portal/verify-email");
  if (!parent.enrollment_completed) redirect("/parent-portal/enroll");
  redirect("/parent-portal/dashboard");
}
