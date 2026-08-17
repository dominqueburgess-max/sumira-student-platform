import { redirect } from "next/navigation";
import { getCurrentStudent } from "@/lib/auth";

export default async function RootPage() {
  const student = await getCurrentStudent();
  redirect(student ? "/dashboard" : "/login");
}
