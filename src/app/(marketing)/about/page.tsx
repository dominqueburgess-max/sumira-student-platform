export const metadata = {
  title: 'About — Su Mira Learning Studio',
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
    <span class="eyebrow" style="color:var(--amber);">About</span>
    <h1>Learning was never meant to fit inside a box.</h1>
    <p class="lede">Su Mira Learning Studio is an educational program committed to expanding access to personalized and innovative learning.</p>
  </div>
</section>

<section>
  <div class="container" style="display:grid; grid-template-columns:1.1fr 0.9fr; gap:48px; align-items:center;">
    <div>
      <span class="eyebrow">Our Story</span>
      <h2>A personalized PreK&ndash;12 learning ecosystem.</h2>
      <p>Su Mira Learning Studio combines self-paced academics, AI-supported learning, optional live instruction, project-based experiences, student portfolios, social and community engagement, entrepreneurship and career exploration, family learning, in-person gatherings and personalized learning blueprints. Su Mira is not a traditional online school or a curriculum subscription &mdash; it is a modern learning studio where every learner receives a personalized pathway, intelligent guidance, flexible academic options, meaningful projects and a real community.</p>
    </div>
    <img class="photo-card" src="https://images.pexels.com/photos/7978857/pexels-photo-7978857.jpeg?auto=compress&amp;cs=tinysrgb&amp;w=1000" alt="A family enjoying time outdoors together" loading="lazy">
  </div>
  <div class="container" style="max-width:800px;">
    <div class="pillow" style="margin-top:28px;">
      <p style="font-family:'Fraunces',serif; font-size:1.2rem; color:var(--plum); margin:0;">"At Su Mira Learning Studio, learners do not have to fit into a predetermined system. We combine flexible academics, personalized guidance, meaningful projects, community and real-world learning to create an education designed around each child."</p>
    </div>
  </div>
</section>

<section id="philosophy" class="section-alt">
  <div class="container" style="max-width:800px;">
    <span class="eyebrow">Our Learning Philosophy</span>
    <h2>Every learner receives more than a course schedule.</h2>
    <p>Every Su Mira learner receives a personalized learning experience built around interests, strengths, academic needs, learning pace, learning preferences, personal goals, college and career interests, accommodations and support needs, projects and real-world experiences, and evidence of growth.</p>
  </div>
</section>

<section>
  <div class="container">
    <span class="eyebrow">Who We Serve</span>
    <h2>Built for many kinds of families.</h2>
    <ul class="feature-list">
      <li>Families seeking a full-time online or home-based learning program</li>
      <li>Homeschool families who want curriculum, structure and community</li>
      <li>Neurodivergent learners who need flexible pacing and personalized support</li>
      <li>Families using ESA, scholarship or education savings funds</li>
      <li>Students seeking a more engaging alternative to traditional school</li>
      <li>Middle and high school students interested in entrepreneurship, internships and career preparation</li>
      <li>Families seeking a hybrid learning experience with online and in-person opportunities</li>
      <li>Microschools, districts and community organizations seeking curriculum or program partnerships</li>
    </ul>
  </div>
</section>

<section id="team" class="section-alt">
  <div class="container center">
    <span class="eyebrow">Our Team</span>
    <h2>Educators, innovators and advocates.</h2>
    <p class="lede center">The Su Mira team brings together experience in school design, neurodivergent and gifted education, education policy, and entrepreneurship &mdash; united around one goal: an education designed around each child.</p>
  </div>
</section>

<section id="burbrella" class="section-alt">
  <div class="container center" style="margin-bottom:40px;">
    <span class="eyebrow">Our Organizations</span>
    <h2>A family of organizations advancing personalized education.</h2>
    <p class="lede center">Su Mira Learning Studio is brought to life through a growing ecosystem of mission-aligned organizations, each contributing distinct expertise to the work of reimagining how children learn.</p>
  </div>
  <div class="container card-grid">
    <div class="card">
      <span class="eyebrow">Founding Organization</span>
      <h3>Burbrella</h3>
      <p>The founding organization behind Su Mira Learning Studio, driving personalized, ecosystem-based education models for neurodivergent, gifted and underserved learners nationwide.</p>
    </div>
    <div class="card">
      <span class="eyebrow">School Design &amp; Facilities</span>
      <h3>Legacy Links School Design &amp; Innovation Group</h3>
      <p>Supports school development, facilities strategy, crisis management and operational design for innovative school and microschool models across the country.</p>
    </div>
    <div class="card">
      <span class="eyebrow">Policy &amp; Entrepreneurship</span>
      <h3>The Institute of Education Entrepreneurship</h3>
      <p>Advances education policy, funding strategy and entrepreneurial pathways that expand access to microschools and nontraditional learning environments.</p>
    </div>
  </div>
</section>

<section id="partnerships" class="section-plum center">
  <div class="container">
    <span class="eyebrow" style="color:var(--amber);">Partnerships &amp; Careers</span>
    <h2>Building the future of learning together.</h2>
    <p class="lede center">We partner with microschools, districts, nonprofits and community organizations, and we're always looking for educators and innovators who share our vision.</p>
    <a href="/enroll" class="btn btn-primary">Start a Conversation</a>
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
