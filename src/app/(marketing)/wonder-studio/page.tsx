export const metadata = {
  title: 'Wonder Studio · PreK–2 — Su Mira Learning Studio',
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
          <a href="/wonder-studio">Wonder Studio · PreK–2</a>
          <a href="/discovery-studio">Discovery Studio · Grades 3–5</a>
          <a href="/venture-studio">Venture Studio · Grades 6–12</a>
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

<section class="page-hero wonder photo-hero" style="background-image:linear-gradient(160deg, rgba(74,58,46,0.86) 0%, rgba(42,21,48,0.92) 100%), url('https://images.pexels.com/photos/29132351/pexels-photo-29132351.jpeg?auto=compress&amp;cs=tinysrgb&amp;w=1600');">
  <div class="container">
    <span class="eyebrow" style="color:var(--amber);">Wonder Studio · Grades PreK–2</span>
    <h1>Learning begins with wonder.</h1>
    <p class="lede">Young learners explore literacy, mathematics, science, nature and creativity through stories, play and hands-on discovery.</p>
    <div class="btn-row">
      <a href="/enroll" class="btn btn-primary">Start Your Journey</a>
      <a href="/learning-blueprint" class="btn btn-ghost">See the Learning Blueprint</a>
    </div>
  </div>
</section>

<section>
  <div class="container" style="display:grid; grid-template-columns:1.1fr 0.9fr; gap:48px; align-items:center;">
    <div>
      <span class="eyebrow">Program Description</span>
      <h2>Play, nature, stories and foundational learning.</h2>
      <p>Su Mira Wonder Studio helps young learners build strong literacy, mathematics, curiosity and confidence through story-driven learning, play, exploration and family connection.</p>
    </div>
    <img class="photo-card" src="https://images.pexels.com/photos/6437505/pexels-photo-6437505.jpeg?auto=compress&amp;cs=tinysrgb&amp;w=1000" alt="Two young learners reading a colorful storybook together" loading="lazy">
  </div>
</section>

<section class="section-alt">
  <div class="container center" style="margin-bottom:28px;">
    <span class="eyebrow">See It In Action</span>
    <h2>A glimpse of a Wonder Studio day.</h2>
  </div>
  <div class="container" style="max-width:820px;">
    <div class="video-frame">
      <span class="video-tag">Wonder Studio</span>
      <video class="media-video" style="height:460px;" autoplay muted loop playsinline poster="https://images.pexels.com/videos/3978636/pexels-photo-3978636.jpeg?auto=compress&amp;cs=tinysrgb&amp;w=1600">
        <source src="https://videos.pexels.com/video-files/3978636/3978636-hd_1920_1080_24fps.mp4" type="video/mp4">
      </video>
    </div>
  </div>
</section>

<section class="section-alt">
  <div class="container">
    <span class="eyebrow">Key Features</span>
    <h2>What a Wonder Studio learner experiences.</h2>
    <ul class="feature-list">
      <li>Early literacy</li>
      <li>Early mathematics</li>
      <li>Nature-based exploration</li>
      <li>Story-led lessons</li>
      <li>Hands-on learning</li>
      <li>Creative arts</li>
      <li>Movement</li>
      <li>Family learning activities</li>
      <li>Developmentally appropriate technology use</li>
      <li>Optional live Wonder Circles</li>
      <li>Digital learner portfolio</li>
      <li>Mira learning support for parents and learners</li>
      <li>Weekly real-world Wonder Quests</li>
    </ul>
  </div>
</section>

<section>
  <div class="container pillow center" style="max-width:760px;">
    <h3>A Wonder Studio dashboard, built for little learners.</h3>
    <div class="tag-row center" style="justify-content:center; margin-top:18px;">
      <span class="tag">Today's story</span>
      <span class="tag">Today's activity</span>
      <span class="tag">Wonder Quest</span>
      <span class="tag">Meet Mira</span>
      <span class="tag">My creations</span>
      <span class="tag">Join a circle</span>
    </div>
    <p style="margin-top:20px;">Large icons, minimal text and bright, calm imagery — designed for independence at an early age.</p>
  </div>
</section>

<section class="section-plum center">
  <div class="container">
    <span class="eyebrow" style="color:var(--amber);">Registration</span>
    <h2>$349 registration fee for Wonder Studio</h2>
    <p class="lede center">Registration reserves the learner's place and covers onboarding, account setup and initial access preparation — separate from annual tuition.</p>
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
      <span>© 2026 Su Mira Learning. An educational program of Burbrella.</span>
      <span>Concept prototype — not yet reflecting confirmed state approvals.</span>
    </div>
  </div>
</footer>` }} />;
}
