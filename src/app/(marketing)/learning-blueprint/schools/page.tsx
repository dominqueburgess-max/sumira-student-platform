export const metadata = {
  title: 'The Learning Blueprint for Schools & Districts — Su Mira Learning',
};

export default function Page() {
  return <div dangerouslySetInnerHTML={{ __html: `<div class="nav-wrap">
  <nav class="nav">
    <a href="/" class="logo">SU MIRA<span>LEARNING</span></a>
    <ul class="nav-links">
      <li><a href="/">Home</a></li>
      <li><a href="/personalized-learning-plans">Personalized Learning Plans</a></li>
      <li class="has-dropdown"><a href="/learning-studio">Learning Studio</a>
        <div class="dropdown-menu">
          <a href="/wonder-studio">Wonder Studio &middot; PreK&ndash;2 (Coming Oct 2026)</a>
          <a href="/discovery-studio">Discovery Studio &middot; Grades 3&ndash;5</a>
          <a href="/venture-studio">Venture Studio &middot; Grades 6&ndash;12</a>
          <a href="/how-it-works">Live Learning</a>
          <a href="/meet-mira">Mira AI Guide</a>
        </div>
      </li>
      <li class="has-dropdown"><a href="/learning-blueprint">Learning Blueprint</a>
        <div class="dropdown-menu">
          <a href="/learning-blueprint/parents">For Parents</a>
          <a href="/learning-blueprint/schools">For Schools</a>
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

<section class="page-hero photo-hero" style="background-image:linear-gradient(160deg, rgba(59,31,61,0.86) 0%, rgba(42,21,48,0.92) 100%), url('https://images.pexels.com/photos/8617542/pexels-photo-8617542.jpeg?auto=compress&cs=tinysrgb&w=1600');">
  <div class="container">
    <span class="eyebrow" style="color:var(--amber);">Learning Blueprint &middot; For Schools &amp; Districts</span>
    <h1>Every student gets a plan. Your team gets time back.</h1>
    <p class="lede">Generate individualized, standards-aligned Learning Blueprints for every student in a classroom or caseload &mdash; without adding hours of manual planning to an already full week.</p>
    <a href="mailto:admissions@sumirastudio.com" class="btn btn-primary">Request a Custom Quote</a>
  </div>
</section>

<section>
  <div class="container center" style="margin-bottom:20px;">
    <span class="eyebrow">Our Approach</span>
    <h2>How we build Blueprints at classroom scale.</h2>
  </div>
  <div class="container journey">
    <div class="journey-step"><div class="journey-num">1</div><div><h4>Share your roster</h4><p>Student names, grade levels, current performance data and any accommodations (IEP, 504, or teacher notes) come in through a simple intake &mdash; no re-keying data you already have.</p></div></div>
    <div class="journey-step"><div class="journey-num">2</div><div><h4>Mira AI builds one Blueprint per student</h4><p>The same rigor as an individual family Blueprint, generated for an entire class or caseload at once: recommended courses, pacing, and project ideas for every learner, simultaneously.</p></div></div>
    <div class="journey-step"><div class="journey-num">3</div><div><h4>Your team reviews and adjusts</h4><p>Every AI-generated Blueprint is editable by a real teacher or coordinator before it goes live &mdash; a human is always in the loop, never replaced by it.</p></div></div>
    <div class="journey-step"><div class="journey-num">4</div><div><h4>Students work their individual plans</h4><p>Each student moves through self-paced lessons matched to their own Blueprint, with Mira AI Guide available for support without adding to your workload.</p></div></div>
    <div class="journey-step"><div class="journey-num">5</div><div><h4>Progress rolls up to one dashboard</h4><p>Instead of checking thirty individual folders, your team sees the whole roster&rsquo;s standards mastery and progress in one place.</p></div></div>
  </div>
</section>

<section class="section-alt">
  <div class="container" style="display:grid; grid-template-columns:1fr 1fr; gap:56px; align-items:start;">
    <div>
      <span class="eyebrow">What&rsquo;s In the Dashboard</span>
      <h2>What your team actually sees.</h2>
      <p style="margin-bottom:18px;">This is built for a teacher, coordinator or administrator managing many students at once &mdash; not for reading one child&rsquo;s plan at a time.</p>
      <ul class="feature-list">
        <li>A whole-roster standards mastery dashboard, sortable by student or class</li>
        <li>An individual, editable Learning Blueprint for every student on the roster</li>
        <li>Digital portfolio and achievement tracking per student</li>
        <li>Mira AI Learning Guide available to every student</li>
        <li>Admin-level reporting for instructional leaders and counselors</li>
      </ul>
    </div>
    <div class="pillow">
      <h4 style="margin-top:0;">Sample Roster Snapshot &mdash; Grade 6 Homeroom</h4>
      <p style="margin-bottom:6px;"><strong style="color:var(--plum)">Amara T.:</strong> On pace &middot; Math focus: ratios &amp; rates &middot; 82% standards mastery</p>
      <p style="margin-bottom:6px;"><strong style="color:var(--plum)">Devon R.:</strong> Ahead of pace &middot; ELA focus: argument writing &middot; 91% standards mastery</p>
      <p style="margin-bottom:6px;"><strong style="color:var(--plum)">Priya S.:</strong> Needs support &middot; Science focus: cell structure &middot; 64% standards mastery</p>
      <p style="margin-bottom:0;"><strong style="color:var(--plum)">Class action item:</strong> 3 students flagged for a Science re-teach this week</p>
    </div>
  </div>
</section>

<section class="section-alt center">
  <div class="container" style="max-width:760px;">
    <span class="eyebrow">Pricing</span>
    <h2>Pricing built around your rollout.</h2>
    <p class="lede center">Every classroom, school and district is different &mdash; pricing is scoped to your roster size, timeline and support needs, not a one-size-fits-all rate card.</p>
  </div>
</section>

<section class="section-plum center">
  <div class="container">
    <span class="eyebrow" style="color:var(--amber);">Begin the Journey</span>
    <h2>Get your rollout ready for your next term.</h2>
    <div class="btn-row center">
      <a href="mailto:admissions@sumirastudio.com" class="btn btn-primary">Request a Custom Quote</a>
      <a href="/personalized-learning-plans" class="btn btn-ghost">See Personalized Learning Plans</a>
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
      <span>&copy; 2026 Su Mira Learning. An educational program of Burbrella.</span>
      <span>Concept prototype &mdash; not yet reflecting confirmed state approvals.</span>
    </div>
  </div>
</footer>` }} />;
}
