export const metadata = {
  title: 'Personalized Learning Plans — Su Mira Learning',
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
          <a href="/wonder-studio">Wonder Studio · PreK–2 (Coming Oct 2026)</a>
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
    <span class="eyebrow">Personalized Learning Plans</span>
    <h1>An AI-generated learning plan, built around one learner at a time.</h1>
    <p class="lede">Whether you're homeschooling, supporting your child through public or private school, or designing individualized plans for a classroom of students, Su Mira's AI builds a standards-aligned, whole-child learning plan — then keeps it growing as the learner does.</p>
    <div class="btn-row">
      <a href="/enroll" class="btn btn-primary">Start a Learning Plan</a>
      <a href="/learning-studio" class="btn btn-ghost">Pair With a Learning Studio</a>
    </div>
    <div class="hero-visual">
      <div class="hero-tile" style="background-image:url('/images/brand/homeschool-headphones-girl.png')"><span class="cap">A learner following her personalized plan</span></div>
      <div class="hero-tile" style="background-image:url('/images/brand/live-studio-design-thinking.png')"><span class="cap">A live studio walking through a plan milestone</span></div>
      <div class="hero-tile" style="background-image:url('/images/brand/homeschool-video-wave.png')"><span class="cap">Checking in with a Su Mira educator</span></div>
      <div class="hero-tile" style="background-image:url('/images/brand/live-studio-entrepreneurial-mindset.png')"><span class="cap">Guided project coaching</span></div>
    </div>
  </div>
</section>

<section class="section-alt">
  <div class="container">
    <div class="center" style="margin-bottom:48px;">
      <span class="eyebrow">Who It's For</span>
      <h2>One plan-builder. Three very different starting points.</h2>
    </div>
    <div class="card-grid">
      <div class="card">
        <span class="eyebrow">Homeschool Families</span>
        <h3>Homeschool Parents</h3>
        <p>Skip the hours of curriculum research. Tell us about your learner and get a standards-aligned plan you can teach with confidence — with Mira available to help explain concepts along the way.</p>
      </div>
      <div class="card">
        <span class="eyebrow">Public &amp; Private School</span>
        <h3>Traditional School Parents</h3>
        <p>Your child is already enrolled in school — this is what happens after the bell. Reinforce what they're learning, fill specific gaps, or extend a strength that the classroom pace doesn't have room for.</p>
      </div>
      <div class="card">
        <span class="eyebrow">Classrooms &amp; Districts</span>
        <h3>Schools &amp; Teachers</h3>
        <p>Generate individualized, whole-child-aligned learning plans for every student in a class or caseload — without adding hours of manual planning to an already full week.</p>
      </div>
    </div>
  </div>
</section>

<section>
  <div class="container">
    <div class="center" style="margin-bottom:20px;">
      <span class="eyebrow">How It Works</span>
      <h2>From "tell us about your learner" to a living plan.</h2>
    </div>
    <div class="journey">
      <div class="journey-step"><div class="journey-num">1</div><div><h4>Tell us about the learner</h4><p>Strengths, interests, current level, and goals — for one child or an entire classroom.</p></div></div>
      <div class="journey-step"><div class="journey-num">2</div><div><h4>AI builds the plan</h4><p>A standards-aligned Learning Blueprint spanning academics, projects, and pace.</p></div></div>
      <div class="journey-step"><div class="journey-num">3</div><div><h4>Learn and practice</h4><p>Self-paced lessons with images and narration for early readers, adaptive practice questions, and voice-in answers for learners who aren't writing independently yet.</p></div></div>
      <div class="journey-step"><div class="journey-num">4</div><div><h4>Track growth</h4><p>A parent or teacher dashboard shows standards mastery, completed work, and achievements as they happen.</p></div></div>
      <div class="journey-step"><div class="journey-num">5</div><div><h4>Adjust and grow</h4><p>The plan adapts as the learner grows — or pair it with a full Learning Studio for live coaching and community.</p></div></div>
    </div>
  </div>
</section>

<section class="section-alt">
  <div class="container center" style="margin-bottom:28px;">
    <span class="eyebrow">What's Included</span>
    <h2>Everything a plan needs to actually work day to day.</h2>
  </div>
  <div class="container tag-row center" style="justify-content:center;">
    <span class="tag">Standards-aligned lessons</span>
    <span class="tag">AI adaptive practice</span>
    <span class="tag">Audio narration for early readers</span>
    <span class="tag">Voice-in answers</span>
    <span class="tag">Digital portfolio</span>
    <span class="tag">Achievement tracking</span>
    <span class="tag">Parent &amp; teacher standards dashboard</span>
    <span class="tag">Mira AI Learning Guide</span>
  </div>
</section>

<section class="section-plum">
  <div class="container center">
    <span class="eyebrow" style="color:var(--amber);">Begin the Journey</span>
    <h2>Build a plan around your learner today.</h2>
    <div class="btn-row center">
      <a href="/enroll" class="btn btn-primary">Start a Learning Plan</a>
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
