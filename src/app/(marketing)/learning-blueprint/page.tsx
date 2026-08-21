export const metadata = {
  title: 'The Su Mira Learning Blueprint — Su Mira Learning Studio',
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


<section class="page-hero photo-hero" style="background-image:linear-gradient(160deg, rgba(59,31,61,0.86) 0%, rgba(42,21,48,0.92) 100%), url('https://images.pexels.com/photos/4260485/pexels-photo-4260485.jpeg?auto=compress&amp;cs=tinysrgb&amp;w=1600');">
  <div class="container">
    <span class="eyebrow" style="color:var(--amber);">The Su Mira Learning Blueprint</span>
    <h1>A learning plan as unique as the learner.</h1>
    <p class="lede">Every Su Mira learner begins with a personalized Learning Blueprint. The Blueprint helps families understand what the learner needs, what motivates them, where they are going and how Su Mira will support the journey.</p>
    <a href="/enroll" class="btn btn-primary">Start Your Journey</a>
  </div>
</section>

<section>
  <div class="container" style="display:grid; grid-template-columns:1fr 1fr; gap:56px; align-items:start;">
    <div>
      <span class="eyebrow">Blueprint Components</span>
      <h2>What goes into every Blueprint.</h2>
      <ul class="feature-list">
        <li>Learner profile</li>
        <li>Interests</li>
        <li>Strengths</li>
        <li>Current academic performance</li>
        <li>Learning preferences</li>
        <li>Family goals</li>
        <li>Student goals</li>
        <li>Recommended pathway</li>
        <li>Recommended courses</li>
        <li>Weekly learning schedule</li>
        <li>Live learning recommendations</li>
        <li>Project recommendations</li>
        <li>Support recommendations</li>
        <li>Accommodations</li>
        <li>Portfolio milestones</li>
        <li>Quarterly reflections</li>
        <li>College, career or entrepreneurship goals</li>
        <li>Parent notes &amp; educator observations</li>
      </ul>
    </div>
    <div class="pillow">
      <h4 style="margin-top:0;">Sample Blueprint &mdash; Jordan, Grade 4</h4>
      <p style="margin-bottom:6px;"><strong style="color:var(--plum)">Strengths:</strong> Visual reasoning, curiosity, storytelling</p>
      <p style="margin-bottom:6px;"><strong style="color:var(--plum)">Goals:</strong> Strengthen writing, explore marine biology</p>
      <p style="margin-bottom:6px;"><strong style="color:var(--plum)">Pathway:</strong> Discovery Studio</p>
      <p style="margin-bottom:6px;"><strong style="color:var(--plum)">This week:</strong> Ecosystem research project, Math Lab, Literacy Circle</p>
      <p style="margin-bottom:6px;"><strong style="color:var(--plum)">Support:</strong> Extended time, visual organizers</p>
      <p style="margin-bottom:6px;"><strong style="color:var(--plum)">Portfolio highlight:</strong> Coral reef diorama presentation</p>
      <p style="margin-bottom:0;"><strong style="color:var(--plum)">Next reflection:</strong> End of quarter, with family and educator notes</p>
    </div>
  </div>
</section>

<section class="section-alt center">
  <div class="container" style="max-width:760px;">
    <h2>Every Blueprint grows with the learner.</h2>
    <p class="lede center">Quarterly reflections keep the plan current &mdash; adjusting courses, projects, live sessions and support as strengths and goals evolve.</p>
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
