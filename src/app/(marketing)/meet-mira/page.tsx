export const metadata = {
  title: 'Meet Mira — Su Mira Learning Studio',
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
      <a href="/login" class="btn btn-ghost" style="margin-right:10px;">Student &amp; Parent Login</a>
      <a href="/enroll" class="btn btn-primary">Start Your Journey</a>
    </div>
  </nav>
</div>


<section class="page-hero">
  <div class="container">
    <span class="eyebrow" style="color:var(--amber);">Meet Mira</span>
    <h1>Personalized support, available when learning happens.</h1>
    <p class="lede">Mira is the intelligent guide inside the Su Mira platform &mdash; warm, encouraging, calm and always age-appropriate. Mira is a support tool, not a replacement for teachers, parents or human relationships.</p>
  </div>
</section>

<section>
  <div class="container" style="display:grid; grid-template-columns:0.85fr 1.15fr; gap:48px; align-items:center;">
    <img class="photo-card" src="https://images.pexels.com/photos/5905969/pexels-photo-5905969.jpeg?auto=compress&amp;cs=tinysrgb&amp;w=1000" alt="A student working with Mira on a laptop at home" loading="lazy">
    <div class="chat-demo" style="margin:0;">
      <div class="bubble mira"><span class="who">Mira</span>Hi, Jordan. I'm Mira. I can help you plan your learning, understand difficult ideas, work through projects and reflect on your progress. What would you like to work on today?</div>
      <div class="bubble student"><span class="who">Learner</span>I don't understand how to begin my ecosystem project.</div>
      <div class="bubble mira"><span class="who">Mira</span>Let's break it into three parts. First, what ecosystem are you most interested in exploring?</div>
    </div>
  </div>
</section>

<section class="section-alt">
  <div class="container">
    <div class="center" style="margin-bottom:36px;">
      <span class="eyebrow">What Mira Does</span>
      <h2>A guide, not a grader.</h2>
    </div>
    <ul class="feature-list" style="max-width:760px; margin:0 auto;">
      <li>Explain assignments</li>
      <li>Break large tasks into smaller steps</li>
      <li>Help students plan their week</li>
      <li>Recommend resources</li>
      <li>Ask reflection questions</li>
      <li>Support project brainstorming</li>
      <li>Help students organize portfolios</li>
      <li>Guide goal setting</li>
      <li>Help secondary learners explore careers</li>
      <li>Support writing development without completing graded work for the student</li>
      <li>Alert parents or staff when human support may be needed</li>
    </ul>
  </div>
</section>

<section>
  <div class="container">
    <div class="center" style="margin-bottom:36px;">
      <span class="eyebrow">Mira by Age</span>
      <h2>The same warmth, a different role.</h2>
    </div>
    <div class="card-grid">
      <div class="card studio-card wonder"><span class="eyebrow">Wonder Studio</span><h3>Gentle companion</h3><p>Mira acts as a gentle learning companion and parent support guide.</p></div>
      <div class="card studio-card discovery"><span class="eyebrow">Discovery Studio</span><h3>Project assistant</h3><p>Mira asks questions, offers explanations and helps learners organize ideas.</p></div>
      <div class="card studio-card venture"><span class="eyebrow">Venture Studio</span><h3>Future-planning mentor</h3><p>Mira acts as an academic, project and future-planning mentor.</p></div>
    </div>
  </div>
</section>

<section class="section-plum">
  <div class="container">
    <div class="center" style="margin-bottom:20px;">
      <span class="eyebrow" style="color:var(--amber);">Parent Controls</span>
      <h2>Families stay connected to every conversation.</h2>
    </div>
    <ul class="feature-list" style="max-width:760px; margin:0 auto; color:rgba(255,255,255,0.85);">
      <li>Review selected Mira interactions</li>
      <li>Set use permissions</li>
      <li>See progress summaries</li>
      <li>Control available features</li>
      <li>Request human support</li>
      <li>Report concerns</li>
      <li>View data and privacy information</li>
    </ul>
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
