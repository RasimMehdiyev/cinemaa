class Footer {
  render() {
    return `
        <div class="footer_container">
                  <div class="header_logo">
                      <img src="./img/MOVIEDOM1.png" alt="logo" />
                  </div>
                  <div class="links">
                      <ul class="main-nav row">
                          <li>TV Shows</li>
                          <li>Movies</li>
                          <li>Upcoming</li>
                          <li>Trailers</li>
                          <li>My list</li>
                      </ul>
                  </div>
                  <div class="social_media">
                      <ul class="row">
                          <li><img src="./img/Vector (5).png"></li>
                          <li><img src="./img/Vector (6).png"></li>
                          <li><img src="./img/Vector (7).png"></li>
                          <li><img src="./img/Vector (1).png"></li>
                      </ul>
                  </div>
              </div>`;
  }
}
export default new Footer();
