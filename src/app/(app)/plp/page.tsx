import { redirect } from "next/navigation";
import { getCurrentPlpParent } from "@/lib/plpAuth";

export default async function PlpGatewayPage() {
  const parent = await getCurrentPlpParent();
  if (!parent) redirect("/plp/login");
  if (!parent.email_verified) redirect("/plp/verify-email");
  redirect("/plp/dashboard");
}
