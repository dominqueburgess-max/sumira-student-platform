export const metadata = {
  title: 'Enroll — Su Mira Learning Studio',
};

import { EnrollForm } from "@/components/EnrollForm";

export default function Page() {
  return <>
    <div dangerouslySetInnerHTML={{ __html: `<div class="nav-wrap">
  <nav class="nav">
    <a href="/" class="logo">SU MIRA<span>LEARNING</span></a>
    <ul class="nav-links">
      <li><a href="/">Home</a></li>
      <li><a href="/personalized-learning-plans">Personalized Learning Plans</a></li>
      <li class="has-dropdown"><a href="/learning-studio">Learning Studio</a>
        <div class="dropdown-menu">
          <a href="/wonder-studio">Wonder Studio &middot; PreK&ndash;2</a>
          <a href="/discovery-studio">Discovery Studio &middot; Grades 3&ndash;5</a>
          <a href="/venture-studio">Venture Studio &middot; Grades 6&ndash;12</a>
          <a href="/how-it-works">Live Learning</a>
          <a href="/meet-mira">Mira AI Guide</a>
          <a href="/learning-blueprint">Learning Blueprint</a>
        </div>
      </li>
      <li><a href="/how-it-works">How It Works</a></li>
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


<section class="page-hero photo-hero" style="background-image:linear-gradient(160deg, rgba(43,58,76,0.82) 0%, rgba(30,41,54,0.9) 100%), url('/images/brand/gathering-friends.png');">
  <div class="container">
    <span class="eyebrow" style="color:var(--amber);">Welcome</span>
    <h1>We&rsquo;re so glad you&rsquo;re here.</h1>
    <p class="lede">Whether you want the full Su Mira Learning Studio experience or just a personalized learning plan, tell us about your family below and we&rsquo;ll take it from there.</p>
  </div>
</section>

<section class="section-alt">
  <div class="container">
    <div class="center" style="margin-bottom:36px;">
      <span class="eyebrow">Two Ways to Get Started</span>
      <h2>Which path fits your family?</h2>
    </div>
    <div class="card-grid" style="margin-bottom:8px;">
      <div class="card studio-card venture">
        <div class="hero-tile" style="background-image:url('/images/brand/live-studio-design-thinking.png'); height:180px; margin-bottom:16px; border-radius:12px;"></div>
        <h3>Full Learning Studio</h3>
        <p>Self-paced academics, live studios, Mira AI guide, real-world projects and community &mdash; the complete PreK&ndash;12 program.</p>
      </div>
      <div class="card studio-card wonder">
        <div class="hero-tile" style="background-image:url('/images/brand/homeschool-headphones-girl.png'); height:180px; margin-bottom:16px; border-radius:12px;"></div>
        <h3>Personalized Learning Plan only</h3>
        <p>Just the AI-generated, standards-aligned learning plan &mdash; a great fit if you're not ready for a full Learning Studio yet.</p>
      </div>
    </div>
  </div>
</section>

<section>
  <div class="container">
    ` }} />
    <EnrollForm />
    <div dangerouslySetInnerHTML={{ __html: `
  </div>
</section>

<section class="section-alt">
  <div class="container">
    <div class="center" style="margin-bottom:36px;">
      <span class="eyebrow">The Enrollment Journey</span>
      <h2>From interest form to launch week.</h2>
    </div>
    <div class="journey">
      <div class="journey-step"><div class="journey-num">1</div><div><h4>Family Interest Form</h4><p>Collect initial family and learner information.</p></div></div>
      <div class="journey-step"><div class="journey-num">2</div><div><h4>Program Recommendation</h4><p>Recommended Learning Studio, plan, schedule, funding options and support level.</p></div></div>
      <div class="journey-step"><div class="journey-num">3</div><div><h4>Application</h4><p>Student records, parent information, prior school history, accommodations, technology access and funding details.</p></div></div>
      <div class="journey-step"><div class="journey-num">4</div><div><h4>Registration Payment</h4><p>The applicable grade-band registration fee.</p></div></div>
      <div class="journey-step"><div class="journey-num">5</div><div><h4>Account Setup</h4><p>Parent account, student account, Mira profile, Learning Blueprint profile and platform access.</p></div></div>
      <div class="journey-step"><div class="journey-num">6</div><div><h4>Family Orientation</h4><p>Platform tour, technology check, program expectations, Mira orientation and community guidelines.</p></div></div>
      <div class="journey-step"><div class="journey-num">7</div><div><h4>Learning Blueprint</h4><p>Initial family questionnaire, academic review and learner profile.</p></div></div>
      <div class="journey-step"><div class="journey-num">8</div><div><h4>Course &amp; Experience Selection</h4><p>Courses, projects, live sessions and social groups.</p></div></div>
      <div class="journey-step"><div class="journey-num">9</div><div><h4>Launch Week</h4><p>A guided first week with platform practice, a live community welcome, a small project and check-ins.</p></div></div>
    </div>
  </div>
</section>

<section class="section-plum center">
  <div class="container">
    <span class="eyebrow" style="color:var(--amber);">Not ready to enroll?</span>
    <h2>Experience Su Mira for one week.</h2>
    <p class="lede center">Try a complimentary Su Mira Discovery Week &mdash; self-paced lessons, a Mira-guided activity, a live studio experience and a sample Learning Blueprint.</p>
    <a href="#" class="btn btn-primary">Start a Complimentary Discovery Week</a>
  </div>
</section>

<footer>
  <div class="container">
    <div class="footer-grid">
      <div>
        <div class="logo" style="color:var(--ivory);">SU MIRA<span style="color:var(--amber);">LEARNING</span></div>
        <p style="margin-top:14px; color:rgba(255,255,255,0.6); font-size:0.9rem;">Learning, designed around every learner. An educational program of Burbrella.</p>
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
          <li><a href="/resources">Family Resources</a></li>
          <li><a href="/enroll">Enrollment</a></li>
        </ul>
      </div>
    </div>
    <div class="footer-bottom">
      <span>&copy; 2026 Su Mira Learning. An educational program of Burbrella.</span>
      <span>Concept prototype &mdash; not yet reflecting confirmed state approvals.</span>
    </div>
  </div>
</footer>` }} />
  </>;
}
