export const metadata = {
  title: 'Pricing — Su Mira Learning Studio',
};

export default function Page() {
  return <div dangerouslySetInnerHTML={{ __html: `<div class="nav-wrap">
  <nav class="nav">
    <a href="/" class="logo">SU MIRA<span>LEARNING STUDIO</span></a>
    <ul class="nav-links">
      <li><a href="/">Home</a></li>
      <li class="has-dropdown"><a href="/wonder-studio">Learning Studios</a>
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


<section class="page-hero photo-hero" style="background-image:linear-gradient(160deg, rgba(59,31,61,0.86) 0%, rgba(42,21,48,0.92) 100%), url('https://images.pexels.com/photos/7114175/pexels-photo-7114175.jpeg?auto=compress&amp;cs=tinysrgb&amp;w=1600');">
  <div class="container">
    <span class="eyebrow" style="color:var(--amber);">Pricing</span>
    <h1>A plan built around your family.</h1>
    <p class="lede">Three membership plans, plus a one-time registration fee by Learning Studio. Eligible families may also qualify for state education funding.</p>
  </div>
</section>

<section>
  <div class="container pricing-grid">
    <div class="price-card">
      <span class="eyebrow">Foundations</span>
      <div class="price-amount">$3,600<span>/year</span></div>
      <p class="price-note">$360/month for 10 months</p>
      <p>For families primarily seeking flexible self-paced learning.</p>
      <ul>
        <li>Self-paced academic course catalog</li>
        <li>Mira AI Learning Guide</li>
        <li>Su Mira Learning Blueprint</li>
        <li>Student profile &amp; digital portfolio</li>
        <li>Progress dashboard</li>
        <li>Digital curriculum &amp; interactive textbooks</li>
        <li>Virtual labs</li>
        <li>Social clubs &amp; family community</li>
        <li>Access to selected virtual events</li>
      </ul>
      <a href="/enroll" class="btn btn-outline">Choose Foundations</a>
    </div>
    <div class="price-card popular">
      <span class="price-tag">Most Popular</span>
      <span class="eyebrow">Flex</span>
      <div class="price-amount">$7,200<span>/year</span></div>
      <p class="price-note">$720/month for 10 months</p>
      <p>Self-paced learning plus regular live support.</p>
      <ul>
        <li>Everything in Foundations</li>
        <li>Bundled live-session credits</li>
        <li>Small-group learning experiences</li>
        <li>Project studios</li>
        <li>Academic support sessions</li>
        <li>Priority Mira features</li>
        <li>Quarterly family progress review</li>
        <li>Expanded student clubs</li>
        <li>Selected live pillar experiences</li>
      </ul>
      <a href="/enroll" class="btn btn-primary">Choose Flex</a>
    </div>
    <div class="price-card">
      <span class="eyebrow">Signature</span>
      <div class="price-amount">$13,500<span>/year</span></div>
      <p class="price-note">$1,350/month for 10 months</p>
      <p>The most comprehensive Su Mira learning experience.</p>
      <ul>
        <li>Everything in Flex</li>
        <li>Larger live-session credit allotment</li>
        <li>Personalized academic planning</li>
        <li>Enhanced family support</li>
        <li>Entrepreneurship coaching</li>
        <li>Internship and community service support</li>
        <li>College and career guidance</li>
        <li>Portfolio and transcript support</li>
        <li>Priority access to special experiences</li>
        <li>Individual progress consultations</li>
        <li>Selected Su Mira Gathering benefits</li>
      </ul>
      <a href="/enroll" class="btn btn-outline">Choose Signature</a>
    </div>
  </div>
</section>

<section class="section-alt">
  <div class="container">
    <div class="center" style="margin-bottom:36px;">
      <span class="eyebrow">Registration Fees</span>
      <h2>A separate, one-time cost by Learning Studio.</h2>
    </div>
    <table class="compare">
      <tr><th>Learning Studio</th><th>Grades</th><th>Registration Fee</th></tr>
      <tr><td>Wonder Studio</td><td>PreK&ndash;2</td><td class="sumira">$349</td></tr>
      <tr><td>Discovery Studio</td><td>Grades 3&ndash;5</td><td class="sumira">$449</td></tr>
      <tr><td>Venture Studio</td><td>Grades 6&ndash;12</td><td class="sumira">$599</td></tr>
    </table>
    <p style="margin-top:24px; max-width:760px;">Registration reserves the learner's place and covers enrollment processing, student and parent account creation, learning platform setup, Mira AI Learning Guide setup, initial Learning Blueprint profile, course catalog access, digital textbook and virtual science lab access, live-session scheduling access, social club access, student portfolio setup, parent and technology orientation, and beginning-of-year planning resources. Registration fees are separate from annual tuition or membership costs.</p>
  </div>
</section>

<section class="section-plum center">
  <div class="container">
    <span class="eyebrow" style="color:var(--amber);">Funding</span>
    <h2>Education funding may make Su Mira more accessible.</h2>
    <p class="lede center">Depending on your state and family eligibility, education savings accounts, scholarships or other programs may help cover approved learning expenses.</p>
    <a href="/funding" class="btn btn-primary">Explore Funding by State</a>
  </div>
</section>

<footer>
  <div class="container">
    <div class="footer-grid">
      <div>
        <div class="logo" style="color:var(--ivory);">SU MIRA<span style="color:var(--amber);">LEARNING STUDIO</span></div>
        <p style="margin-top:14px; color:rgba(255,255,255,0.6); font-size:0.9rem;">Learning, designed around every learner. An educational program of Burbrella.</p>
      </div>
      <div>
        <h5>Learning Studios</h5>
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
          <li><a href="/pricing">Pricing</a></li>
          <li><a href="/funding">Funding by State</a></li>
          <li><a href="/resources">Family Resources</a></li>
          <li><a href="/enroll">Enrollment</a></li>
        </ul>
      </div>
    </div>
    <div class="footer-bottom">
      <span>&copy; 2026 Su Mira Learning Studio. An educational program of Burbrella.</span>
      <span>Concept prototype &mdash; not yet reflecting confirmed state approvals.</span>
    </div>
  </div>
</footer>` }} />;
}
