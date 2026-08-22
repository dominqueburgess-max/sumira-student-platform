export const metadata = {
  title: 'How It Works — Su Mira Learning Studio',
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


<section class="page-hero photo-hero" style="background-image:linear-gradient(160deg, rgba(59,31,61,0.86) 0%, rgba(42,21,48,0.92) 100%), url('/images/brand/live-studio-design-thinking.png');">
  <div class="container">
    <span class="eyebrow" style="color:var(--amber);">How It Works</span>
    <h1>A modern learning studio, built around six pillars.</h1>
    <p class="lede">Self-paced academics, intelligent guidance, optional live learning, real-world projects, community and a personalized blueprint &mdash; woven into one experience.</p>
  </div>
</section>

<section>
  <div class="container">
    <div class="center" style="margin-bottom:20px;">
      <span class="eyebrow">The Journey</span>
      <h2>From first conversation to a living portfolio.</h2>
    </div>
    <div class="journey">
      <div class="journey-step"><div class="journey-num">1</div><div><h4>Tell us about your learner</h4><p>Share strengths, interests, goals and support needs through a short family interest form.</p></div></div>
      <div class="journey-step"><div class="journey-num">2</div><div><h4>Build the Learning Blueprint</h4><p>We recommend a Learning Studio, membership plan, schedule and funding options.</p></div></div>
      <div class="journey-step"><div class="journey-num">3</div><div><h4>Select courses and experiences</h4><p>Choose self-paced courses, live sessions, projects and social groups.</p></div></div>
      <div class="journey-step"><div class="journey-num">4</div><div><h4>Learn at a flexible pace</h4><p>Self-paced academics, interactive lessons, digital textbooks and virtual labs.</p></div></div>
      <div class="journey-step"><div class="journey-num">5</div><div><h4>Connect with Mira and live educators</h4><p>Intelligent guidance plus small-group live sessions when families want them.</p></div></div>
      <div class="journey-step"><div class="journey-num">6</div><div><h4>Complete projects and build a portfolio</h4><p>Nature quests, STREAM challenges, entrepreneurship and exhibitions.</p></div></div>
      <div class="journey-step"><div class="journey-num">7</div><div><h4>Reflect, adjust and grow</h4><p>Quarterly reflections keep the Blueprint current as learners grow.</p></div></div>
    </div>
  </div>
</section>

<section class="section-alt">
  <div class="container">
    <div class="center" style="margin-bottom:40px;">
      <span class="eyebrow">Six Pillars</span>
      <h2>The Su Mira learning model.</h2>
    </div>
    <div class="card-grid">
      <div class="card"><h3>1. Personalized Learning</h3><p>Every learner receives a Su Mira Learning Blueprint built around strengths, interests and goals.</p></div>
      <div class="card"><h3>2. Flexible Academics</h3><p>Self-paced courses, video-based instruction, digital textbooks, virtual labs and academic support.</p></div>
      <div class="card"><h3>3. Intelligent Guidance</h3><p>Mira, the Su Mira AI Learning Guide, supports planning, reflection and goal-setting.</p></div>
      <div class="card"><h3>4. Live Learning</h3><p>Optional small-group sessions, project studios and workshops &mdash; scheduled around the family.</p></div>
      <div class="card"><h3>5. Projects &amp; Real-World Learning</h3><p>Nature quests, design challenges, entrepreneurship, internships and student exhibitions.</p></div>
      <div class="card"><h3>6. Community</h3><p>Student clubs, family community, regional meetups and twice-yearly Su Mira Gatherings.</p></div>
    </div>
  </div>
</section>

<section class="section-plum center">
  <div class="container">
    <h2>Start building a learning experience around your child.</h2>
    <a href="/enroll" class="btn btn-primary">Start Your Journey</a>
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
</footer>` }} />;
}
