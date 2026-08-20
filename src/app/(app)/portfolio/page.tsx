import { redirect } from "next/navigation";
import { getCurrentStudent } from "@/lib/auth";
import { db } from "@/lib/db";
import { StudentNav } from "@/components/StudentNav";
import { PortfolioForm } from "@/components/PortfolioForm";

export default async function PortfolioPage() {
  const student = await getCurrentStudent();
  if (!student) redirect("/login");

  const items = await db().sql`
    SELECT * FROM portfolio_items WHERE student_id = ${student.id} ORDER BY created_at DESC
  `;

  return (
    <div className="min-h-screen flex flex-col">
      <StudentNav firstName={student.first_name} />
      <main className="flex-1 max-w-4xl mx-auto w-full px-6 py-10">
        <h1 className="text-2xl mb-1">My Creations</h1>
        <p className="text-warm-gray mb-6 text-sm">A place to show off everything you've made and learned.</p>

        <div className="mb-8">
          <PortfolioForm />
        </div>

        {items.length === 0 ? (
          <p className="text-warm-gray text-sm">Nothing here yet — add your first creation above!</p>
        ) : (
          <div className="grid sm:grid-cols-3 gap-5">
            {items.map((item) => (
              <div key={item.id} className="bg-ivory rounded-2xl card-shadow border border-border overflow-hidden">
                {item.media_url && (
                  // eslint-disable-next-line @next/next/no-img-element
                  <img src={item.media_url} alt={item.title} className="w-full h-36 object-cover" />
                )}
                <div className="p-4">
                  <h3 className="text-sm font-semibold text-plum">{item.title}</h3>
                  {item.description && <p className="text-xs text-warm-gray mt-1">{item.description}</p>}
                </div>
              </div>
            ))}
          </div>
        )}
      </main>
    </div>
  );
}
