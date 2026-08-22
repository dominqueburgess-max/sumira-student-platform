export const metadata = {
  title: 'Discovery Studio · Grades 3–5 — Su Mira Learning Studio',
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
      <a href="/account" class="btn btn-ghost" style="margin-right:10px;">Log In / Sign Up</a>
      <a href="/enroll" class="btn btn-primary">Start Your Journey</a>
    </div>
  </nav>
</div>


<section class="page-hero photo-hero" style="background-image:linear-gradient(160deg, rgba(59,31,61,0.86) 0%, rgba(42,21,48,0.92) 100%), url('https://images.pexels.com/photos/5553655/pexels-photo-5553655.jpeg?auto=compress&amp;cs=tinysrgb&amp;w=1600');">
  <div class="container">
    <span class="eyebrow" style="color:var(--amber);">Discovery Studio &middot; Grades 3&ndash;5</span>
    <h1>Learners move beyond completing assignments and begin using knowledge to design, build and solve real problems.</h1>
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
      <h2>STREAM, exploration, invention and growing independence.</h2>
      <p>Su Mira Discovery Studio blends core academics with monthly challenges that ask learners to build, investigate, create, design and solve meaningful problems.</p>
    </div>
    <img class="photo-card" src="https://images.pexels.com/photos/7868885/pexels-photo-7868885.jpeg?auto=compress&amp;cs=tinysrgb&amp;w=1000" alt="Students collaborating on a robotics science project" loading="lazy">
  </div>
</section>

<section class="section-alt">
  <div class="container center" style="margin-bottom:28px;">
    <span class="eyebrow">See It In Action</span>
    <h2>A glimpse of a Discovery Studio project.</h2>
  </div>
  <div class="container" style="max-width:820px;">
    <div class="video-frame">
      <span class="video-tag">Discovery Studio</span>
      <video class="media-video" style="height:460px;" autoplay muted loop playsinline poster="https://images.pexels.com/videos/7868390/club-diy-futuristic-learning-7868390.jpeg?auto=compress&amp;cs=tinysrgb&amp;w=1600">
        <source src="https://videos.pexels.com/video-files/7868390/7868390-uhd_2560_1440_25fps.mp4" type="video/mp4">
      </video>
    </div>
  </div>
</section>

<section class="section-alt">
  <div class="container">
    <span class="eyebrow">Key Features</span>
    <h2>What a Discovery Studio learner experiences.</h2>
    <ul class="feature-list">
      <li>Standards-aligned academics</li>
      <li>Science, technology, reading, engineering, arts and mathematics</li>
      <li>Monthly Discovery Challenges</li>
      <li>Coding and digital literacy</li>
      <li>Research skills</li>
      <li>Maker activities</li>
      <li>Project exhibitions</li>
      <li>Student collaboration</li>
      <li>Peer feedback</li>
      <li>Virtual labs</li>
      <li>Optional live Discovery Labs</li>
      <li>Mira project and academic support</li>
      <li>Digital portfolio</li>
    </ul>
  </div>
</section>

<section>
  <div class="container pillow center" style="max-width:760px;">
    <h3>A Discovery Studio dashboard.</h3>
    <div class="tag-row center" style="justify-content:center; margin-top:18px;">
      <span class="tag">Today's plan</span>
      <span class="tag">Current courses</span>
      <span class="tag">Discovery Challenge</span>
      <span class="tag">Upcoming live sessions</span>
      <span class="tag">Mira support</span>
      <span class="tag">Project checklist</span>
      <span class="tag">Portfolio</span>
      <span class="tag">Clubs</span>
      <span class="tag">Progress badges</span>
    </div>
  </div>
</section>

<section class="section-plum center">
  <div class="container">
    <span class="eyebrow" style="color:var(--amber);">Registration</span>
    <h2>$449 registration fee for Discovery Studio</h2>
    <p class="lede center">Registration reserves the learner's place and covers onboarding, account setup and initial access preparation &mdash; separate from annual tuition.</p>
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
