export const metadata = {
  title: 'Funding by State — Su Mira Learning Studio',
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


<section class="page-hero photo-hero" style="background-image:linear-gradient(160deg, rgba(59,31,61,0.86) 0%, rgba(42,21,48,0.92) 100%), url('https://images.pexels.com/photos/7978857/pexels-photo-7978857.jpeg?auto=compress&amp;cs=tinysrgb&amp;w=1600');">
  <div class="container">
    <span class="eyebrow" style="color:var(--amber);">Funding</span>
    <h1>Education funding may make Su Mira more accessible.</h1>
    <p class="lede">Eligible families may be able to use state education funding toward approved Su Mira services. Award amounts, eligibility requirements and covered expenses vary by state.</p>
  </div>
</section>

<section>
  <div class="container" style="max-width:800px;">
    <span class="eyebrow">What Families Should Know</span>
    <h2>Funding varies by state and by family.</h2>
    <ul class="feature-list" style="columns:1;">
      <li>ESA funding may be available to eligible families.</li>
      <li>Su Mira is pursuing approval with education savings and scholarship programs in multiple states.</li>
      <li>Funding eligibility and covered services vary by state and student.</li>
      <li>Approval by one state does not guarantee approval in another.</li>
      <li>Our family support team can help families understand available options.</li>
    </ul>
  </div>
</section>

<section class="section-alt">
  <div class="container">
    <span class="eyebrow">Funding by State</span>
    <h2>This page will be updated as state approvals are secured.</h2>
    <table class="compare">
      <tr><th>State</th><th>Program</th><th>Status</th></tr>
      <tr><td>North Carolina</td><td>Education Student Accounts (ESA+) / Opportunity Scholarship</td><td>Pursuing approval</td></tr>
      <tr><td>Additional states</td><td>To be announced</td><td>Under review</td></tr>
    </table>
    <p style="margin-top:20px; max-width:760px;">Award amounts, eligibility requirements and covered expenses vary by state and are confirmed only once a program approval is finalized.</p>
  </div>
</section>

<section id="request" class="section-plum center">
  <div class="container">
    <h2>Request Funding Support</h2>
    <p class="lede center">Our family support team can help you understand what may be available in your state.</p>
    <a href="/enroll" class="btn btn-primary">Request Funding Support</a>
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
