export const metadata = {
  title: 'Learning Studio — Su Mira Learning',
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
      <a href="/account" class="btn btn-ghost" style="margin-right:10px;">Log In / Sign Up</a>
      <a href="/enroll" class="btn btn-primary">Start Your Journey</a>
    </div>
  </nav>
</div>

<section class="hero">
  <div class="container">
    <h1>Learning was never meant to fit inside a box.</h1>
    <p class="lede">Su Mira Learning Studio is a personalized PreK–12 learning community combining flexible academics, intelligent guidance, live experiences, real-world projects and meaningful connection.</p>
    <div class="btn-row">
      <a href="/enroll" class="btn btn-primary">Start Your Journey</a>
      <a href="/how-it-works" class="btn btn-ghost">Explore How It Works</a>
    </div>
    <div class="hero-visual">
      <div class="hero-tile" style="background-image:url('https://images.pexels.com/photos/6167619/pexels-photo-6167619.jpeg?auto=compress&amp;cs=tinysrgb&amp;w=800')"><span class="cap">A young learner exploring outdoors</span></div>
      <div class="hero-tile" style="background-image:url('https://images.pexels.com/photos/7868885/pexels-photo-7868885.jpeg?auto=compress&amp;cs=tinysrgb&amp;w=800')"><span class="cap">A student building a project</span></div>
      <div class="hero-tile" style="background-image:url('https://images.pexels.com/photos/6684552/pexels-photo-6684552.jpeg?auto=compress&amp;cs=tinysrgb&amp;w=800')"><span class="cap">Teens collaborating on a venture</span></div>
      <div class="hero-tile" style="background-image:url('https://images.pexels.com/photos/5905969/pexels-photo-5905969.jpeg?auto=compress&amp;cs=tinysrgb&amp;w=800')"><span class="cap">A live virtual studio session</span></div>
      <div class="hero-tile" style="background-image:url('https://images.pexels.com/photos/7114175/pexels-photo-7114175.jpeg?auto=compress&amp;cs=tinysrgb&amp;w=800')"><span class="cap">A parent and child learning together</span></div>
      <div class="hero-tile" style="background-image:url('https://images.pexels.com/photos/4260485/pexels-photo-4260485.jpeg?auto=compress&amp;cs=tinysrgb&amp;w=800')"><span class="cap">Reviewing the Learning Blueprint</span></div>
      <div class="hero-tile" style="background-image:url('https://images.pexels.com/photos/10071284/pexels-photo-10071284.jpeg?auto=compress&amp;cs=tinysrgb&amp;w=800')"><span class="cap">A Su Mira Gathering</span></div>
      <div class="hero-tile" style="background-image:url('https://images.pexels.com/photos/5553655/pexels-photo-5553655.jpeg?auto=compress&amp;cs=tinysrgb&amp;w=800')"><span class="cap">A student showcase</span></div>
    </div>
  </div>
</section>

<section class="value-strip tight">
  <div class="container">
    <div class="value-grid">
      <div>Self-paced academics</div>
      <div>Mira AI Learning Guide</div>
      <div>Optional live learning</div>
      <div>Real-world projects</div>
      <div>Student community</div>
      <div>PreK through Grade 12</div>
    </div>
  </div>
</section>

<section>
  <div class="container center">
    <span class="eyebrow">Why Families Are Reimagining School</span>
    <h2>Your learner deserves more than one way to learn.</h2>
    <p class="lede center">Su Mira blends the structure families want with the flexibility learners need.</p>
    <table class="compare" style="margin-top:36px; text-align:left;">
      <tr><th>Traditional School</th><th>Typical Online Program</th><th>Su Mira</th></tr>
      <tr><td>Fixed schedule</td><td>Mostly independent</td><td class="sumira">Flexible pathway</td></tr>
      <tr><td>One pace</td><td>Self-paced only</td><td class="sumira">Self-paced plus support</td></tr>
      <tr><td>Standard assignments</td><td>Video lessons</td><td class="sumira">Projects and experiences</td></tr>
      <tr><td>Limited personalization</td><td>Limited guidance</td><td class="sumira">Learning Blueprint</td></tr>
      <tr><td>Local social group</td><td>Often isolated</td><td class="sumira">National community</td></tr>
      <tr><td>Grades as evidence</td><td>Course completion</td><td class="sumira">Portfolio and mastery</td></tr>
    </table>
  </div>
</section>

<section class="section-alt">
  <div class="container">
    <div class="center" style="margin-bottom:48px;">
      <span class="eyebrow">Learning Studios</span>
      <h2>Choose a Learning Studio</h2>
    </div>
    <div class="card-grid">
      <div class="card studio-card wonder">
        <span class="eyebrow">PreK–2</span>
        <h3>Wonder Studio</h3>
        <p>Play, nature, stories and foundational learning.</p>
        <a href="/wonder-studio" class="btn btn-outline">Explore Wonder Studio</a>
      </div>
      <div class="card studio-card discovery">
        <span class="eyebrow">Grades 3–5</span>
        <h3>Discovery Studio</h3>
        <p>STREAM challenges, exploration and creative problem-solving.</p>
        <a href="/discovery-studio" class="btn btn-outline">Explore Discovery Studio</a>
      </div>
      <div class="card studio-card venture">
        <span class="eyebrow">Grades 6–12</span>
        <h3>Venture Studio</h3>
        <p>Mastery, projects, entrepreneurship and future readiness.</p>
        <a href="/venture-studio" class="btn btn-outline">Explore Venture Studio</a>
      </div>
    </div>
  </div>
</section>

<section>
  <div class="container">
    <div class="center" style="margin-bottom:20px;">
      <span class="eyebrow">The Su Mira Learning Experience</span>
      <h2>A journey, not a checklist.</h2>
    </div>
    <div class="journey">
      <div class="journey-step"><div class="journey-num">1</div><div><h4>Tell us about your learner</h4><p>Share strengths, interests and goals.</p></div></div>
      <div class="journey-step"><div class="journey-num">2</div><div><h4>Build the Learning Blueprint</h4><p>A personalized plan built around your learner.</p></div></div>
      <div class="journey-step"><div class="journey-num">3</div><div><h4>Select courses and experiences</h4><p>Academics, live sessions and projects that fit.</p></div></div>
      <div class="journey-step"><div class="journey-num">4</div><div><h4>Learn at a flexible pace</h4><p>Self-paced academics that meet learners where they are.</p></div></div>
      <div class="journey-step"><div class="journey-num">5</div><div><h4>Connect with Mira and live educators</h4><p>Guidance whenever learning happens.</p></div></div>
      <div class="journey-step"><div class="journey-num">6</div><div><h4>Complete projects and build a portfolio</h4><p>Meaningful evidence of growth.</p></div></div>
      <div class="journey-step"><div class="journey-num">7</div><div><h4>Reflect, adjust and grow</h4><p>Quarterly check-ins keep the plan alive.</p></div></div>
    </div>
  </div>
</section>

<section class="section-alt">
  <div class="container" style="display:grid; grid-template-columns:1fr 1fr; gap:56px; align-items:center;">
    <div>
      <span class="eyebrow">The Learning Blueprint</span>
      <h2>A learning plan as unique as the learner.</h2>
      <p>Every Su Mira learner begins with a personalized Learning Blueprint. The Blueprint helps families understand what the learner needs, what motivates them, where they are going and how Su Mira will support the journey.</p>
      <a href="/learning-blueprint" class="btn btn-primary">See the Learning Blueprint</a>
    </div>
    <div class="pillow">
      <h4 style="margin-top:0;">Jordan's Blueprint</h4>
      <p style="margin-bottom:6px;"><strong style="color:var(--plum)">Strengths:</strong> Visual reasoning, curiosity, storytelling</p>
      <p style="margin-bottom:6px;"><strong style="color:var(--plum)">Goals:</strong> Strengthen writing, explore marine biology</p>
      <p style="margin-bottom:6px;"><strong style="color:var(--plum)">This week:</strong> Ecosystem research project, Math Lab, Literacy Circle</p>
      <p style="margin-bottom:6px;"><strong style="color:var(--plum)">Portfolio highlight:</strong> Coral reef diorama presentation</p>
      <p style="margin-bottom:0;"><strong style="color:var(--plum)">Upcoming:</strong> Live Science Studio, Thursday 2:00 PM</p>
    </div>
  </div>
</section>

<section>
  <div class="container center" style="margin-bottom:28px;">
    <span class="eyebrow">Meet Mira</span>
    <h2>Personalized support, available when learning happens.</h2>
  </div>
  <div class="chat-demo">
    <div class="bubble student"><span class="who">Learner</span>I don't understand how to begin my ecosystem project.</div>
    <div class="bubble mira"><span class="who">Mira</span>Let's break it into three parts. First, what ecosystem are you most interested in exploring?</div>
  </div>
  <p class="lede center" style="margin-top:28px;">Mira helps learners plan, understand, reflect and move forward while keeping families connected to progress.</p>
  <div class="center"><a href="/meet-mira" class="btn btn-outline">Meet Mira</a></div>
</section>

<section class="section-alt">
  <div class="container">
    <div class="center" style="margin-bottom:28px;">
      <span class="eyebrow">Live Learning</span>
      <h2>Choose connection without losing flexibility.</h2>
      <p class="lede center">Families select live sessions based on their schedule and enrollment plan — never an all-day screen schedule.</p>
    </div>
    <div class="tag-row center" style="justify-content:center;">
      <span class="tag">Literacy Circle</span>
      <span class="tag">Math Lab</span>
      <span class="tag">Science Studio</span>
      <span class="tag">Project Coaching</span>
      <span class="tag">Entrepreneurship Workshop</span>
      <span class="tag">Student Club</span>
      <span class="tag">Study Hall</span>
      <span class="tag">Career Conversation</span>
    </div>
  </div>
</section>

<section>
  <div class="container center">
    <span class="eyebrow">Projects and Portfolio</span>
    <h2>Learners should have something meaningful to show for what they know.</h2>
    <div class="tag-row center" style="justify-content:center; margin-top:24px;">
      <span class="tag">Nature journal</span>
      <span class="tag">Coding project</span>
      <span class="tag">Student business</span>
      <span class="tag">Science experiment</span>
      <span class="tag">Community service project</span>
      <span class="tag">Research presentation</span>
      <span class="tag">Digital art</span>
      <span class="tag">Internship reflection</span>
    </div>
    <div style="margin-top:32px;"><a href="/community#showcases" class="btn btn-outline">Explore Student Work</a></div>
  </div>
</section>

<section class="section-plum">
  <div class="container center">
    <span class="eyebrow" style="color:var(--amber);">Real Community</span>
    <h2>Online does not have to mean alone.</h2>
    <div class="tag-row center" style="justify-content:center; margin-top:24px;">
      <span class="tag">Student clubs</span>
      <span class="tag">Peer collaboration</span>
      <span class="tag">Social groups</span>
      <span class="tag">Family community</span>
      <span class="tag">Project showcases</span>
      <span class="tag">Guest speakers</span>
      <span class="tag">Regional experiences</span>
      <span class="tag">Su Mira Gatherings</span>
    </div>
  </div>
</section>

<section class="section-alt">
  <div class="container center" style="margin-bottom:36px;">
    <span class="eyebrow">Su Mira Gatherings</span>
    <h2>Three days. Twice a year. One learning community.</h2>
  </div>
  <div class="container card-grid">
    <div class="card"><h3>Explore</h3><p>Field trips and shared discovery — museums, nature centers, colleges and community organizations.</p></div>
    <div class="card"><h3>Experience</h3><p>Learning simulations and student challenges — entrepreneurship, science labs, mock trials and design work.</p></div>
    <div class="card"><h3>Connect</h3><p>Family learning, showcases and celebration — parent sessions, student-led conferences and guest speakers.</p></div>
  </div>
  <div class="container center" style="margin-top:36px;"><a href="/gatherings" class="btn btn-primary">Explore Su Mira Gatherings</a></div>
</section>

<section id="pricing">
  <div class="container center" style="margin-bottom:40px;">
    <span class="eyebrow">Pricing</span>
    <h2>A plan built around your family.</h2>
  </div>
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
        <li>Digital portfolio &amp; progress dashboard</li>
        <li>Virtual labs &amp; interactive textbooks</li>
        <li>Social clubs &amp; family community</li>
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
        <li>Small-group learning &amp; project studios</li>
        <li>Academic support sessions</li>
        <li>Priority Mira features</li>
        <li>Quarterly family progress review</li>
      </ul>
      <a href="/enroll" class="btn btn-primary">Choose Flex</a>
    </div>
    <div class="price-card">
      <span class="eyebrow">Signature</span>
      <div class="price-amount">$13,500<span>/year</span></div>
      <p class="price-note">$1,350/month for 10 months</p>
      <p>The most comprehensive Su Mira experience.</p>
      <ul>
        <li>Everything in Flex</li>
        <li>Personalized academic planning</li>
        <li>Entrepreneurship coaching &amp; internship support</li>
        <li>College and career guidance</li>
        <li>Portfolio and transcript support</li>
        <li>Selected Su Mira Gathering benefits</li>
      </ul>
      <a href="/enroll" class="btn btn-outline">Choose Signature</a>
    </div>
  </div>
  <div class="container" style="margin-top:30px;">
    <p class="price-note center" style="text-align:center;">Registration fees are separate from tuition: Wonder Studio $349 · Discovery Studio $449 · Venture Studio $599. Eligible families may be able to use state education funding toward approved Su Mira services — see Funding.</p>
  </div>
</section>

<section class="section-alt">
  <div class="container center">
    <span class="eyebrow">Funding Support</span>
    <h2>Education funding may make Su Mira more accessible.</h2>
    <p class="lede center">Depending on your state and family eligibility, education savings accounts, scholarships or other programs may help cover approved learning expenses.</p>
    <div class="btn-row center">
      <a href="/funding" class="btn btn-outline">Explore Funding by State</a>
      <a href="/funding#request" class="btn btn-primary">Request Funding Support</a>
    </div>
  </div>
</section>

<section class="tight">
  <div class="container center">
    <span class="eyebrow">Complimentary Discovery Week</span>
    <h2>Experience Su Mira for one week.</h2>
    <p class="lede center">Selected self-paced lessons, one Mira-guided activity, one live studio experience, a sample Learning Blueprint and access to a sample community event.</p>
    <a href="/enroll" class="btn btn-primary">Start a Complimentary Discovery Week</a>
  </div>
</section>

<section id="enroll-cta" class="section-plum">
  <div class="container center">
    <span class="eyebrow" style="color:var(--amber);">Begin the Journey</span>
    <h2>Start building a learning experience around your child.</h2>
    <a href="/enroll" class="btn btn-primary">Start Our Su Mira Journey</a>
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
