export const metadata = {
  title: 'Community — Su Mira Learning Studio',
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


<section class="page-hero">
  <div class="container">
    <span class="eyebrow" style="color:var(--amber);">Community</span>
    <h1>Online does not have to mean alone.</h1>
    <p class="lede">Su Mira intentionally addresses the isolation often associated with online learning through clubs, showcases, family community and in-person gatherings.</p>
  </div>
</section>

<section id="clubs">
  <div class="container" style="display:grid; grid-template-columns:1.1fr 0.9fr; gap:48px; align-items:center;">
    <div>
      <span class="eyebrow">Student Clubs</span>
      <h2>Find your people.</h2>
      <div class="tag-row">
        <span class="tag">Student interest groups</span>
        <span class="tag">Moderated social spaces</span>
        <span class="tag">Virtual clubs</span>
        <span class="tag">Peer project feedback</span>
      </div>
    </div>
    <img class="photo-card short" src="https://images.pexels.com/photos/5553655/pexels-photo-5553655.jpeg?auto=compress&amp;cs=tinysrgb&amp;w=1000" alt="Multiethnic students collaborating on a project" loading="lazy">
  </div>
</section>

<section id="family" class="section-alt">
  <div class="container" style="display:grid; grid-template-columns:0.9fr 1.1fr; gap:48px; align-items:center;">
    <img class="photo-card short" src="https://images.pexels.com/photos/7114175/pexels-photo-7114175.jpeg?auto=compress&amp;cs=tinysrgb&amp;w=1000" alt="A parent and child learning together at home" loading="lazy">
    <div>
      <span class="eyebrow">Family Community</span>
      <h2>Learning stays connected to the family.</h2>
      <p>Family communities, family learning events and workshops keep parents and guardians engaged partners in the learning journey &mdash; not just observers.</p>
    </div>
  </div>
</section>

<section id="showcases">
  <div class="container" style="display:grid; grid-template-columns:1.1fr 0.9fr; gap:48px; align-items:center;">
    <div>
      <span class="eyebrow">Student Showcases</span>
      <h2>Meaningful evidence of growth.</h2>
      <p>Regular student exhibitions and portfolio showcases give learners a real audience for real work.</p>
    </div>
    <img class="photo-card short" src="https://images.pexels.com/photos/5905856/pexels-photo-5905856.jpeg?auto=compress&amp;cs=tinysrgb&amp;w=1000" alt="A diverse group of students presenting their work" loading="lazy">
  </div>
</section>

<section id="regional" class="section-alt">
  <div class="container" style="display:grid; grid-template-columns:0.9fr 1.1fr; gap:48px; align-items:center;">
    <img class="photo-card short" src="https://images.pexels.com/photos/8021127/pexels-photo-8021127.jpeg?auto=compress&amp;cs=tinysrgb&amp;w=1000" alt="Families gathering together outdoors" loading="lazy">
    <div>
      <span class="eyebrow">Regional Experiences</span>
      <h2>Community close to home.</h2>
      <p>Future community expansion may include regional Su Mira Days, local field trips, parent-led gatherings, community service experiences, local project showcases, college visits, career site visits, nature excursions and family learning meetups. The platform will eventually allow families to search for experiences by state or region.</p>
    </div>
  </div>
</section>

<section class="section-plum center">
  <div class="container">
    <span class="eyebrow" style="color:var(--amber);">Su Mira Gatherings</span>
    <h2>Three days. Twice a year. One learning community.</h2>
    <a href="/gatherings" class="btn btn-primary">Explore Su Mira Gatherings</a>
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
