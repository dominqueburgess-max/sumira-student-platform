import { redirect } from "next/navigation";
import { getCurrentStudent } from "@/lib/auth";

export const metadata = {
  title: 'Su Mira Learning — Personalized Learning Plans and Learning Studios for every learner.',
};

export default async function Page() {
  const student = await getCurrentStudent();
  if (student) redirect("/dashboard");

  return <div dangerouslySetInnerHTML={{ __html: `<div class="nav-wrap">
  <nav class="nav">
    <a href="/" class="logo">SU MIRA<span>LEARNING</span></a>
    <ul class="nav-links">
      <li><a href="/">Home</a></li>
      <li><a href="/personalized-learning-plans">Personalized Learning Plans</a></li>
      <li class="has-dropdown"><a href="/learning-studio">Learning Studio</a>
        <div class="dropdown-menu">
          <a href="/wonder-studio">Wonder Studio · PreK–2</a>
          <a href="/discovery-studio">Discovery Studio · Grades 3–5</a>
          <a href="/venture-studio">Venture Studio · Grades 6–12</a>
          <a href="/how-it-works">Live Learning</a>
          <a href="/meet-mira">Mira AI Guide</a>
          <a href="/learning-blueprint">Learning Blueprint</a>
        </div>
      </li>
      <li class="has-dropdown"><a href="/community">Community</a>
        <div class="dropdown-menu">
          <a href="/community#clubs">Student Clubs</a>
          <a href="/gatherings">Su Mira Gatherings</a>
          <a href="/community#regional">Regional Experiences</a>
          <a href="/community#family">Family Community</a>
          <a href="/community#showcases">Student Showcases</a>
        </div>
      </li>
      <li><a href="/pricing">Pricing</a></li>
      <li><a href="/funding">Funding</a></li>
      <li class="has-dropdown"><a href="/about">About</a>
        <div class="dropdown-menu">
          <a href="/about">Our Story</a>
          <a href="/about#philosophy">Our Learning Philosophy</a>
          <a href="/about#team">Our Team</a>
          <a href="/about#burbrella">Our Organizations</a>
        </div>
      </li>
      <li><a href="/resources">Resources</a></li>
    </ul>
    <div class="nav-actions">
      <a href="/account" class="btn btn-outline" style="margin-right:10px;">Log In / Sign Up</a>
      <a href="/enroll" class="btn btn-primary">Start Your Journey</a>
    </div>
  </nav>
</div>

<section class="hero">
  <div class="container">
    <h1>One learner. One plan. Built by AI, brought to life by Su Mira.</h1>
    <p class="lede">Su Mira Learning helps homeschool families, traditional school parents, and schools and teachers build personalized, standards-aligned learning plans powered by AI — then gives every learner a place to bring that plan to life inside a Su Mira Learning Studio.</p>
    <div class="btn-row">
      <a href="/personalized-learning-plans" class="btn btn-primary">Build a Personalized Learning Plan</a>
      <a href="/learning-studio" class="btn btn-ghost">Explore Learning Studio</a>
    </div>
    <div class="hero-visual">
      <div class="hero-tile" style="background-image:url('/images/brand/wonder-outdoor-explorer.png')"><span class="cap">A Wonder Studio learner exploring outdoors</span></div>
      <div class="hero-tile" style="background-image:url('/images/brand/venture-robotics-builder.png')"><span class="cap">A Venture Studio learner building a project</span></div>
      <div class="hero-tile" style="background-image:url('/images/brand/venture-team-planning.png')"><span class="cap">Teens collaborating on a venture plan</span></div>
      <div class="hero-tile" style="background-image:url('/images/brand/live-studio-design-thinking.png')"><span class="cap">A live Learning Studio session</span></div>
      <div class="hero-tile" style="background-image:url('/images/brand/homeschool-headphones-girl.png')"><span class="cap">A homeschool learner following her personalized plan</span></div>
      <div class="hero-tile" style="background-image:url('/images/brand/homeschool-video-wave.png')"><span class="cap">Connecting live with a Su Mira educator</span></div>
      <div class="hero-tile" style="background-image:url('/images/brand/gathering-friends.png')"><span class="cap">A Su Mira Gathering</span></div>
      <div class="hero-tile" style="background-image:url('/images/brand/live-studio-entrepreneurial-mindset.png')"><span class="cap">Guided entrepreneurship coaching</span></div>
    </div>
  </div>
</section>

<section class="value-strip tight">
  <div class="container">
    <div class="value-grid">
      <div>AI-generated learning plans</div>
      <div>Standards-aligned content</div>
      <div>Mira AI Learning Guide</div>
      <div>Live studio support</div>
      <div>Family &amp; teacher dashboards</div>
      <div>PreK through Grade 12</div>
    </div>
  </div>
</section>

<section>
  <div class="container center">
    <span class="eyebrow">Who We Are</span>
    <h2>Su Mira Learning is the AI behind personalized education — and the studios that bring it to life.</h2>
    <p class="lede center">Every learner thinks, grows and shows what they know differently. Su Mira Learning gives families, homeschool parents, and school communities two connected ways to build an education around the whole child instead of the average one: an AI-generated Personalized Learning Plan, and — for families and school communities who want it — a full Learning Studio where that plan becomes real classes, live coaching, projects and community.</p>
  </div>
</section>

<section class="section-alt">
  <div class="container">
    <div class="center" style="margin-bottom:48px;">
      <span class="eyebrow">Two Ways to Work With Us</span>
      <h2>Choose the level of support your family or school needs.</h2>
    </div>
    <div class="card-grid">
      <div class="card studio-card wonder">
        <span class="eyebrow">AI-Powered</span>
        <h3>Personalized Learning Plans</h3>
        <p>Answer a few questions about your learner and receive an AI-generated, standards-aligned learning plan — built for homeschool families, traditional public and private school parents, and schools and teachers designing whole-child plans for their students.</p>
        <a href="/personalized-learning-plans" class="btn btn-outline">Build a Learning Plan</a>
      </div>
      <div class="card studio-card venture">
        <span class="eyebrow">Full Program</span>
        <h3>Learning Studio</h3>
        <p>A complete PreK–12 learning community — self-paced academics, the Mira AI Learning Guide, live studios, real-world projects and family community — for learners who want their personalized plan to become their everyday education.</p>
        <a href="/learning-studio" class="btn btn-outline">Explore Learning Studio</a>
      </div>
    </div>
  </div>
</section>

<section>
  <div class="container">
    <div class="center" style="margin-bottom:48px;">
      <span class="eyebrow">Who We Serve</span>
      <h2>Built for every family and every classroom.</h2>
    </div>
    <div class="card-grid">
      <div class="card">
        <div class="hero-tile" style="background-image:url('/images/brand/homeschool-headphones-girl.png'); height:180px; margin-bottom:16px; border-radius:12px;"></div>
        <h3>Homeschool Parents</h3>
        <p>Build a rigorous, standards-aligned plan around your child's strengths and interests — without spending your evenings designing curriculum from scratch.</p>
      </div>
      <div class="card">
        <div class="hero-tile" style="background-image:url('/images/brand/homeschool-video-wave.png'); height:180px; margin-bottom:16px; border-radius:12px;"></div>
        <h3>Traditional School Parents</h3>
        <p>Enhance what your child is already learning in public or private school with a personalized plan that fills gaps, extends strengths, and keeps them engaged.</p>
      </div>
      <div class="card">
        <div class="hero-tile" style="background-image:url('/images/brand/live-studio-design-thinking.png'); height:180px; margin-bottom:16px; border-radius:12px;"></div>
        <h3>Schools &amp; Teachers</h3>
        <p>Give every student in your classroom or school a personalized, whole-child-aligned learning plan — without adding hours of planning to your week.</p>
      </div>
    </div>
  </div>
</section>

<section class="section-alt">
  <div class="container" style="display:grid; grid-template-columns:1fr 1fr; gap:56px; align-items:center;">
    <div>
      <span class="eyebrow">How the AI Plan Works</span>
      <h2>A plan built around the learner, not a template.</h2>
      <p>Tell us about the learner — their strengths, interests, and where they need support. Our AI builds a standards-aligned Learning Blueprint, tracks growth over time, and adjusts as the learner grows. Families and teachers get a live dashboard; learners get a plan that actually fits them.</p>
      <a href="/personalized-learning-plans" class="btn btn-primary">See How It Works</a>
    </div>
    <div class="pillow">
      <h4 style="margin-top:0;">Jordan's Blueprint</h4>
      <p style="margin-bottom:6px;"><strong style="color:var(--plum)">Strengths:</strong> Visual reasoning, curiosity, storytelling</p>
      <p style="margin-bottom:6px;"><strong style="color:var(--plum)">Goals:</strong> Strengthen writing, explore marine biology</p>
      <p style="margin-bottom:6px;"><strong style="color:var(--plum)">This week:</strong> Ecosystem research project, Math Lab, Literacy Circle</p>
      <p style="margin-bottom:6px;"><strong style="color:var(--plum)">Portfolio highlight:</strong> Coral reef diorama presentation</p>
      <p style="margin-bottom:0;"><strong style="color:var(--plum)">Upcoming:</strong> Live Science Studio, Thursday 2:00 PM</p>
    </div>
  </div>
</section>

<section class="section-plum">
  <div class="container center">
    <span class="eyebrow" style="color:var(--amber);">Begin the Journey</span>
    <h2>Start with a plan. Grow into a Learning Studio.</h2>
    <div class="btn-row center">
      <a href="/personalized-learning-plans" class="btn btn-primary">Build a Personalized Learning Plan</a>
      <a href="/learning-studio" class="btn btn-ghost">Explore Learning Studio</a>
    </div>
  </div>
</section>

<footer>
  <div class="container">
    <div class="footer-grid">
      <div>
        <div class="logo" style="color:var(--ivory);">SU MIRA<span style="color:var(--amber);">LEARNING</span></div>
        <p style="margin-top:14px; color:rgba(255,255,255,0.6); font-size:0.9rem;">Personalized learning plans and Learning Studios, designed around every learner. An educational program of Burbrella.</p>
      </div>
      <div>
        <h5>Learning Studio</h5>
        <ul>
          <li><a href="/wonder-studio">Wonder Studio</a></li>
          <li><a href="/discovery-studio">Discovery Studio</a></li>
          <li><a href="/venture-studio">Venture Studio</a></li>
          <li><a href="/meet-mira">Mira AI Guide</a></li>
          <li><a href="/learning-blueprint">Learning Blueprint</a></li>
        </ul>
      </div>
      <div>
        <h5>Community</h5>
        <ul>
          <li><a href="/community">Student Clubs</a></li>
          <li><a href="/gatherings">Su Mira Gatherings</a></li>
          <li><a href="/community#regional">Regional Experiences</a></li>
          <li><a href="/community#showcases">Student Showcases</a></li>
        </ul>
      </div>
      <div>
        <h5>About</h5>
        <ul>
          <li><a href="/about">Our Story</a></li>
          <li><a href="/about#team">Our Team</a></li>
          <li><a href="/about#burbrella">Our Organizations</a></li>
          <li><a href="/about#partnerships">Partnerships</a></li>
        </ul>
      </div>
      <div>
        <h5>Get Started</h5>
        <ul>
          <li><a href="/personalized-learning-plans">Personalized Learning Plans</a></li>
          <li><a href="/pricing">Pricing</a></li>
          <li><a href="/funding">Funding by State</a></li>
          <li><a href="/enroll">Enrollment</a></li>
        </ul>
      </div>
    </div>
    <div class="footer-bottom">
      <span>© 2026 Su Mira Learning. An educational program of Burbrella.</span>
      <span>Concept prototype — not yet reflecting confirmed state approvals.</span>
    </div>
  </div>
</footer>` }} />;
}
