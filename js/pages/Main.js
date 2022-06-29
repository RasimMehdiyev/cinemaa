class Main {
  activeFunctions() {}

  render() {
    return `
    <header>
        <div class="header_shadow">
          <div class="header_container row">
              <div class="header_logo">
                  <a href="index.html">
                  <img src="./img/MOVIEDOM1.png" alt="logo" />
              </div>
              <input type="checkbox" id="resp-check">
              ${Nav.render()}
          </div>
          ${HeaderMain.render()}
        </div>
      </header>
      <main>
          <section>
              <div class="container">
                ${SectionHeader.render("Continue Watching")}
                  <a href="#" class="view_all">View all</a>
                  <div class="continue_watching_container">
                      <div class="continue_watching_card">
                          <video controls type="video/mp4" src="https://www.youtube.com/watch?v=2QKg5SZ_35I&ab_channel=SonyPicturesEntertainment">
                          </video>
                          <h3>Jumanji</h3>
  
                      </div>
                      <div class="continue_watching_card">
                          <video controls src="https://www.youtube.com/watch?v=rBxcF-r9Ibs&ab_channel=SonyPicturesEntertainment">
                          </video>
                          <h3>Jumanji</h3>
                      </div>
                      <div  class="continue_watching_card"><video controls src="https://www.youtube.com/watch?v=FdeioVndUhs&ab_channel=NITVShorts">
                      </video>
                      <h3>Jumanji</h3>
                      </div>
                  </div>
              </div>
          </section>
  
  
          <section> 
             <div class="container">
             
             ${SectionHeader.render("Popular Movies 2022")}

                  <a href="#" class="view_all">View all</a>
              </div>
              <div class="slider_container row">
                  <svg id="slider_left_btn" width="15" height="29" viewBox="0 0 15 29" fill="none" xmlns="http://www.w3.org/2000/svg">
                      <path d="M1.83468 10.1092L11.433 0.602298C11.8248 0.216529 12.3548 0 12.9072 0C13.4596 0 13.9896 0.216529 14.3814 0.602298C14.5774 0.794845 14.733 1.02392 14.8392 1.27632C14.9453 1.52872 15 1.79944 15 2.07287C15 2.3463 14.9453 2.61702 14.8392 2.86942C14.733 3.12181 14.5774 3.35089 14.3814 3.54344L4.76225 13.0297C4.56626 13.2222 4.41069 13.4513 4.30453 13.7037C4.19836 13.9561 4.1437 14.2268 4.1437 14.5002C4.1437 14.7737 4.19836 15.0444 4.30453 15.2968C4.41069 15.5492 4.56626 15.7783 4.76225 15.9708L14.3814 25.457C14.7752 25.8443 14.9975 26.3707 14.9995 26.9203C15.0015 27.4699 14.7829 27.9978 14.3919 28.3878C14.0009 28.7778 13.4695 28.998 12.9146 29C12.3597 29.0019 11.8267 28.7854 11.433 28.3982L1.83468 18.8912C0.659876 17.7262 0 16.1469 0 14.5002C0 12.8536 0.659876 11.2743 1.83468 10.1092Z" fill="white" fill-opacity="0.52"/>
                  </svg>
              </div>
  
  
                      <svg id="slider_right_btn" width="15" height="29" viewBox="0 0 15 29" fill="none" xmlns="http://www.w3.org/2000/svg">
                          <path d="M13.1653 10.1092L3.56705 0.602298C3.17525 0.216529 2.64524 0 2.0928 0C1.54035 0 1.01035 0.216529 0.618552 0.602298C0.422554 0.794845 0.266987 1.02392 0.160823 1.27632C0.0546589 1.52872 0 1.79944 0 2.07287C0 2.3463 0.0546589 2.61702 0.160823 2.86942C0.266987 3.12181 0.422554 3.35089 0.618552 3.54344L10.2377 13.0297C10.4337 13.2222 10.5893 13.4513 10.6955 13.7037C10.8016 13.9561 10.8563 14.2268 10.8563 14.5002C10.8563 14.7737 10.8016 15.0444 10.6955 15.2968C10.5893 15.5492 10.4337 15.7783 10.2377 15.9708L0.618552 25.457C0.224785 25.8443 0.00246735 26.3707 0.000506541 26.9203C-0.00145427 27.4699 0.217104 27.9978 0.608098 28.3878C0.999093 28.7778 1.5305 28.998 2.08541 29C2.64032 29.0019 3.17328 28.7854 3.56705 28.3982L13.1653 18.8912C14.3401 17.7262 15 16.1469 15 14.5002C15 12.8536 14.3401 11.2743 13.1653 10.1092Z" fill="white" fill-opacity="0.52"/>
                          </svg>
                          
                      
              </div>
          </section>
  
  
  
          <footer>
              ${Footer.render()}
          </footer>
      </main>
  `;
  }
}

export default new Main();
