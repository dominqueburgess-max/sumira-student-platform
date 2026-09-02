export const metadata = {
  title: 'The Learning Blueprint for Families — Su Mira Learning',
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
          <a href="/wonder-studio">Wonder Studio &middot; PreK&ndash;2 (Coming Oct 2026)</a>
          <a href="/discovery-studio">Discovery Studio &middot; Grades 3&ndash;5</a>
          <a href="/venture-studio">Venture Studio &middot; Grades 6&ndash;12</a>
          <a href="/how-it-works">Live Learning</a>
          <a href="/meet-mira">Mira AI Guide</a>
        </div>
      </li>
      <li class="has-dropdown"><a href="/learning-blueprint">Learning Blueprint</a>
        <div class="dropdown-menu">
          <a href="/learning-blueprint/parents">For Parents</a>
          <a href="/learning-blueprint/schools">For Schools</a>
        </div>
      </li>
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

<section class="page-hero photo-hero" style="background-image:linear-gradient(160deg, rgba(59,31,61,0.86) 0%, rgba(42,21,48,0.92) 100%), url('https://images.pexels.com/photos/4260485/pexels-photo-4260485.jpeg?auto=compress&cs=tinysrgb&w=1600');">
  <div class="container">
    <span class="eyebrow" style="color:var(--amber);">Learning Blueprint &middot; For Families</span>
    <h1>One learner. One AI-built plan, made just for them.</h1>
    <p class="lede">Whether you are homeschooling, or supporting your child through public or private school, the Learning Blueprint starts with your child &mdash; their strengths, interests and goals &mdash; and builds a standards-aligned plan around them.</p>
    <a href="/enroll" class="btn btn-primary">Start Your Learning Blueprint</a>
  </div>
</section>

<section>
  <div class="container center" style="margin-bottom:20px;">
    <span class="eyebrow">Our Approach</span>
    <h2>How we build your child&rsquo;s Blueprint.</h2>
  </div>
  <div class="container journey">
    <div class="journey-step"><div class="journey-num">1</div><div><h4>Tell us about your learner</h4><p>You and your child each answer a short Learning Blueprint survey: learning style, interests, strengths, growth areas, favorite and challenging subjects, motivation, tech access, and goals for the year.</p></div></div>
    <div class="journey-step"><div class="journey-num">2</div><div><h4>Mira AI builds the plan</h4><p>Our AI turns those answers into a standards-aligned Blueprint: recommended courses, a weekly learning schedule, project ideas and support recommendations &mdash; specific to your one learner.</p></div></div>
    <div class="journey-step"><div class="journey-num">3</div><div><h4>Your learner works the plan</h4><p>Self-paced lessons matched to the Blueprint, with audio narration for early readers, voice-in answers, adaptive practice, and Mira AI Guide available any time they get stuck.</p></div></div>
    <div class="journey-step"><div class="journey-num">4</div><div><h4>You watch it happen</h4><p>Your parent dashboard shows the Blueprint itself, what is coming up this week, and your child&rsquo;s progress as they move through it.</p></div></div>
    <div class="journey-step"><div class="journey-num">5</div><div><h4>It grows with your learner</h4><p>On our Growing and Guided plans, the Blueprint is revised each quarter or semester as strengths, interests and goals evolve &mdash; it is never a one-and-done document.</p></div></div>
  </div>
</section>

<section class="section-alt">
  <div class="container" style="display:grid; grid-template-columns:1fr 1fr; gap:56px; align-items:start;">
    <div>
      <span class="eyebrow">What&rsquo;s In the Dashboard</span>
      <h2>What you and your learner actually see.</h2>
      <p style="margin-bottom:18px;">The Learning Blueprint is not just a document &mdash; it is the thing your family&rsquo;s dashboard is built around.</p>
      <h4 style="color:var(--plum); margin-bottom:8px;">For you (the parent dashboard)</h4>
      <ul class="feature-list">
        <li>Your child&rsquo;s full Learning Blueprint, in plain language</li>
        <li>Recommended courses and weekly schedule</li>
        <li>Standards mastery tracking as work is completed</li>
        <li>Digital portfolio of your learner&rsquo;s work</li>
        <li>Achievement and badge tracking</li>
        <li>A running Getting Started checklist for what is next</li>
      </ul>
      <h4 style="color:var(--plum); margin:18px 0 8px;">For your learner (the student dashboard)</h4>
      <ul class="feature-list">
        <li>Self-paced lessons organized around their Blueprint</li>
        <li>Mira AI Learning Guide, available any time</li>
        <li>Adaptive practice that adjusts to what they already know</li>
        <li>Their own digital portfolio and achievements</li>
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

<section class="section-plum center">
  <div class="container">
    <span class="eyebrow" style="color:var(--amber);">Begin the Journey</span>
    <h2>Build your learner&rsquo;s Blueprint today.</h2>
    <div class="btn-row center">
      <a href="/enroll" class="btn btn-primary">Start a Learning Plan</a>
      <a href="/personalized-learning-plans" class="btn btn-ghost">See Personalized Learning Plan Pricing</a>
    </div>
  </div>
</section>

<footer>
  <div class="container">
    <div class="footer-grid">
      <div>
        <div class="logo" style="color:var(--ivory);">SU MIRA<span style="color:var(--amber);">LEARNING</span></div>
        <p style="margin-top:14px; color:rgba(255,255,255,0.6); font-size:0.9rem;">Personalized learning plans and Learning Studios, designed around every learner. An educational program of Burbrella.</p>
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
