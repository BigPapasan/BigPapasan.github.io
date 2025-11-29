const app = document.getElementById('app');

// --- Components ---

function renderHome() {
  app.innerHTML = `
    <div class="hero">
      <div class="hero-bg" style="background-image: url('images/italy_hero.png')"></div>
      <div class="hero-content">
        <h1 class="hero-title">Summer 2025 European Vacation</h1>
        <p class="hero-subtitle">Benvenuti in Italia</p>
      </div>
      <div class="scroll-indicator">
        <span>Explore</span>
        <div class="arrow">↓</div>
      </div>
    </div>
    <div class="container">
      <h2 class="reveal" style="text-align: center; margin-bottom: 40px; font-size: 2.5rem;">Your Destinations</h2>
      <div class="grid">
        ${tripData.map((location, index) => `
          <div class="card reveal" style="transition-delay: ${index * 100}ms" onclick="navigateTo('${location.id}')">
            <div class="card-image-wrapper">
              <img src="${location.imageName}" alt="${location.name}" class="card-image">
            </div>
            <div class="card-content">
              <h3 class="card-title">${location.name}</h3>
              <p class="card-date">${location.dates}</p>
            </div>
          </div>
        `).join('')}
      </div>
    </div>
  `;

  initAnimations();
}

function renderLocation(locationId) {
  const location = tripData.find(l => l.id === locationId);
  if (!location) {
    navigateTo('');
    return;
  }

  app.innerHTML = `
    <div class="hero">
      <div class="hero-bg" style="background-image: url('${location.imageName}')"></div>
      <a onclick="navigateTo('')" class="back-button">← Back</a>
      <div class="hero-content">
        <h1 class="hero-title">${location.name}</h1>
        <p class="hero-subtitle">${location.dates}</p>
      </div>
    </div>
    <div class="container">
      <p class="location-desc reveal">
        ${location.description}
      </p>
      
      <div class="itinerary">
        ${location.itinerary.map((day, index) => `
          <div class="day-section reveal" style="transition-delay: ${index * 100}ms">
            <div class="day-header" onclick="toggleDay(this)">
              <div class="day-info">
                <span class="day-number">Day ${day.dayNumber}</span>
                <span class="day-title">${day.title}</span>
              </div>
              <span class="day-date">${day.date}</span>
              <span class="day-toggle">▼</span>
            </div>
            
            <div class="day-content">
              <div class="activities-list">
                ${day.activities.map((activity, idx) => `
                  <div class="activity-row">
                    <div class="activity-timeline">
                      <div class="timeline-dot"></div>
                      ${idx < day.activities.length - 1 ? '<div class="timeline-line"></div>' : ''}
                    </div>
                    <div class="activity-content">
                      <div class="activity-header">
                        <span class="activity-title">${activity.title}</span>
                        ${activity.time ? `<span class="activity-time">${activity.time}</span>` : ''}
                      </div>
                      <p class="activity-desc">${activity.description}</p>
                    </div>
                  </div>
                `).join('')}
              </div>
            </div>
          </div>
        `).join('')}
      </div>
    </div>
  `;

  initAnimations();
  // Open the first day by default
  setTimeout(() => {
    const firstDay = document.querySelector('.day-section');
    if (firstDay) toggleDay(firstDay.querySelector('.day-header'));
  }, 500);
}

// --- Logic ---

function navigateTo(route) {
  window.location.hash = route;
  window.scrollTo(0, 0);
}

function handleRoute() {
  const hash = window.location.hash.substring(1);
  if (hash) {
    renderLocation(hash);
  } else {
    renderHome();
  }
}

// Accordion Toggle
window.toggleDay = function (header) {
  const currentSection = header.parentElement;
  const allSections = document.querySelectorAll('.day-section');
  // Close other sections
  allSections.forEach(sec => {
    if (sec !== currentSection) sec.classList.remove('open');
  });
  // Toggle current section
  const isNowOpen = !currentSection.classList.toggle('open');
  // If opened, smooth scroll into view
  if (currentSection.classList.contains('open')) {
    currentSection.scrollIntoView({ behavior: 'smooth', block: 'start' });
  }
};


// Scroll Animations (Intersection Observer)
function initAnimations() {
  const observer = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
      if (entry.isIntersecting) {
        entry.target.classList.add('active');
      }
    });
  }, { threshold: 0.1 });

  document.querySelectorAll('.reveal').forEach(el => observer.observe(el));

  // Parallax Effect
  const heroBg = document.querySelector('.hero-bg');
  const heroContent = document.querySelector('.hero-content');

  if (heroBg) {
    window.addEventListener('scroll', () => {
      const scrolled = window.pageYOffset;
      // Parallax for background
      heroBg.style.transform = `translate3d(0, ${scrolled * 0.4}px, 0) scale(${1 + scrolled * 0.0002})`;

      // Subtle parallax for content (moves slower)
      if (heroContent) {
        heroContent.style.transform = `translate3d(0, ${scrolled * 0.15}px, 0)`;
        heroContent.style.opacity = 1 - (scrolled / 700);
      }
    });
  }
}

// Init
window.addEventListener('hashchange', handleRoute);
window.addEventListener('load', handleRoute);
