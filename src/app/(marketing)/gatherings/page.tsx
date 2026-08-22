export const metadata = {
  title: 'Su Mira Gatherings — Su Mira Learning Studio',
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


<section class="page-hero photo-hero" style="background-image:linear-gradient(160deg, rgba(59,31,61,0.86) 0%, rgba(42,21,48,0.92) 100%), url('https://images.pexels.com/photos/10071284/pexels-photo-10071284.jpeg?auto=compress&amp;cs=tinysrgb&amp;w=1600');">
  <div class="container">
    <span class="eyebrow" style="color:var(--amber);">Su Mira Gatherings</span>
    <h1>Three days. Twice a year. One learning community.</h1>
    <p class="lede">Online learning should not mean learning alone. Twice each year, Su Mira families are invited to gather for three days of exploration, immersive learning and family connection. Gatherings may begin in one primary city and expand into regional locations over time.</p>
  </div>
</section>

<section>
  <div class="container card-grid">
    <div class="card">
      <img class="photo-card short" style="margin-bottom:18px;" src="https://images.pexels.com/photos/7978857/pexels-photo-7978857.jpeg?auto=compress&amp;cs=tinysrgb&amp;w=800" alt="A family exploring together outdoors" loading="lazy">
      <span class="eyebrow">Day One</span>
      <h3>Explore</h3>
      <p>A shared field experience &mdash; museums, zoos, aquariums, nature centers, science centers, historical locations, cultural institutions, colleges, businesses and community organizations.</p>
    </div>
    <div class="card">
      <img class="photo-card short" style="margin-bottom:18px;" src="https://images.pexels.com/photos/7868885/pexels-photo-7868885.jpeg?auto=compress&amp;cs=tinysrgb&amp;w=800" alt="Students taking part in a hands-on learning simulation" loading="lazy">
      <span class="eyebrow">Day Two</span>
      <h3>Experience</h3>
      <p>An interactive learning simulation and student experience day &mdash; entrepreneurship simulations, science labs, design challenges, robotics, mock trials, career simulations, financial literacy challenges, engineering activities, exhibitions, public speaking and leadership activities.</p>
    </div>
    <div class="card">
      <img class="photo-card short" style="margin-bottom:18px;" src="https://images.pexels.com/photos/8021127/pexels-photo-8021127.jpeg?auto=compress&amp;cs=tinysrgb&amp;w=800" alt="Families connecting together at a community gathering" loading="lazy">
      <span class="eyebrow">Day Three</span>
      <h3>Connect</h3>
      <p>A family learning and community summit &mdash; parent learning sessions, family workshops, student-led conferences, learner showcases, guest speakers, college and career workshops, and celebration and recognition.</p>
    </div>
  </div>
</section>

<section class="section-alt center">
  <div class="container" style="max-width:700px;">
    <p class="lede center">Participation is optional unless a specific enrollment package clearly states otherwise.</p>
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
