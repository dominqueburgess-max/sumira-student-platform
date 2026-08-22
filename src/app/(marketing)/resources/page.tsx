export const metadata = {
  title: 'Family Resources — Su Mira Learning Studio',
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


<section class="page-hero photo-hero" style="background-image:linear-gradient(160deg, rgba(59,31,61,0.86) 0%, rgba(42,21,48,0.92) 100%), url('https://images.pexels.com/photos/16461275/pexels-photo-16461275.jpeg?auto=compress&amp;cs=tinysrgb&amp;w=1600');">
  <div class="container">
    <span class="eyebrow" style="color:var(--amber);">Family Resources</span>
    <h1>Everything families need to get started and stay informed.</h1>
    <p class="lede">FAQs, technology requirements, the school calendar and family guides.</p>
  </div>
</section>

<section>
  <div class="container" style="max-width:800px;">
    <span class="eyebrow">Frequently Asked Questions</span>
    <h2>Common questions from Su Mira families.</h2>
    <div class="pillow" style="margin-bottom:18px;"><h4 style="margin-top:0;">What is a Learning Blueprint?</h4><p style="margin-bottom:0;">A personalized plan built around your learner's strengths, interests, goals and support needs &mdash; recommending courses, live experiences, projects and portfolio milestones, refreshed each quarter.</p></div>
    <div class="pillow" style="margin-bottom:18px;"><h4 style="margin-top:0;">Do learners have to attend live classes all day?</h4><p style="margin-bottom:0;">No. Live learning is optional or bundled by plan, and families choose sessions &mdash; literacy circles, math labs, project studios and more &mdash; based on their schedule and needs.</p></div>
    <div class="pillow" style="margin-bottom:18px;"><h4 style="margin-top:0;">Can we use ESA or scholarship funding?</h4><p style="margin-bottom:0;">ESA funding may be available to eligible families. Funding eligibility and covered services vary by state and student &mdash; see our Funding by State page.</p></div>
    <div class="pillow" style="margin-bottom:18px;"><h4 style="margin-top:0;">What technology do we need?</h4><p style="margin-bottom:0;">A reliable internet connection, a computer or tablet capable of running a modern web browser, and headphones for live sessions. Full technology requirements are provided during family orientation.</p></div>
    <div class="pillow"><h4 style="margin-top:0;">Is Mira a replacement for a teacher?</h4><p style="margin-bottom:0;">No. Mira is a support tool that helps learners plan, understand and reflect &mdash; teachers, parents and human relationships remain central to the Su Mira experience.</p></div>
  </div>
</section>

<section class="section-alt center">
  <div class="container">
    <h2>Still have questions?</h2>
    <a href="/enroll" class="btn btn-primary">Talk to Our Family Support Team</a>
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
