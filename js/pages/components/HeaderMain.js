class HeaderMain {
  render() {
    return `
        <div class="header_main_container">
              <h1>THE LOST CITY</h1>
                  <ul class="header_movie_type">
                      <li>Action-Adventure</li>
                      <li>Comedy</li>
                      <li>Action</li>
                  </ul>
                  <p class="header_movie_paragraph">
                      Alan, who is secretly enamored with Loretta, witnesses her kidnapping. He recruits Jack Trainer, a former Navy SEAL turned CIA operative, to meet him on the island and coordinate a rescueattempt.Jack, with no assistance from Alan.
                  </p>
                  <ul class="header_movie_info">  
                      <li>
                          <svg width="19" height="19" viewBox="0 0 19 19" fill="none" xmlns="http://www.w3.org/2000/svg">
                          <path d="M14.1116 17.3885C18.4611 14.8457 19.9311 9.23792 17.3884 4.88845C14.8457 0.538988 9.23787 -0.931067 4.8884 1.61165C0.538935 4.15437 -0.931121 9.76219 1.6116 14.1117C4.15432 18.4611 9.76213 19.9312 14.1116 17.3885ZM5.2727 2.26902C9.25996 -0.0619514 14.4001 1.2855 16.731 5.27275C19.062 9.26001 17.7146 14.4001 13.7273 16.7311C9.74004 19.0621 4.59994 17.7146 2.26897 13.7274C-0.0620046 9.74009 1.28544 4.59999 5.2727 2.26902Z" fill="white"/>
                          </svg>
                      
                          164 min
                      </li>
                      <li>
                          <svg width="21" height="17" viewBox="0 0 21 17" fill="none" xmlns="http://www.w3.org/2000/svg">
                          <path d="M1 13.8404H4.70807L9.78651 15.9363C10.3105 16.158 10.8949 15.7751 10.8949 15.1907V1.80935C10.8949 1.22493 10.3105 0.842027 9.78651 1.06371L4.70807 3.15957H1.08061V11.3214" stroke="white" stroke-width="1.3" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>
                          <path d="M14.3413 4.4292C15.3892 5.47713 16.0341 6.90796 16.0341 8.50002C16.0341 10.0921 15.3892 11.5431 14.3413 12.5708" stroke="white" stroke-width="1.3" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>
                          <path d="M16.7593 2.01074C18.4118 3.66325 19.4597 5.96064 19.4597 8.49987C19.4597 11.0391 18.4319 13.3365 16.7593 14.989" stroke="white" stroke-width="1.3" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>
                          </svg>
                          Subtitles
                      </li>
                      <li>
                          <svg width="6" height="6" viewBox="0 0 6 6" fill="none" xmlns="http://www.w3.org/2000/svg">
                          <circle cx="3" cy="3" r="3" fill="white"/>
                          </svg>
                          <b>Imdb</b> 9.1/10
                      </li>    
                  </ul>
                  <div class="button_container">
                      <button class="red_btn"><svg width="12" height="19" viewBox="0 0 12 19" fill="none" xmlns="http://www.w3.org/2000/svg">
                          <path d="M1.54455 18.8278L1.67587 18.7209L11.4622 10.6459C11.7936 10.3728 12 9.96313 12 9.50594C12 9.04875 11.7874 8.63906 11.4622 8.36594L1.69463 0.296875L1.53205 0.160312C1.37572 0.0593748 1.18812 0 0.988015 0C0.443981 0 0 0.439375 0 0.985625V18.0144C0 18.5606 0.443981 19 0.988015 19C1.19437 19 1.38822 18.9347 1.54455 18.8278Z" fill="white"/>
                          </svg>
                          Watch Now
                      </button>
  
                      <button>
                          <svg width="18" height="18" viewBox="0 0 18 18" fill="none" xmlns="http://www.w3.org/2000/svg">
                              <path d="M9 1V17" stroke="#C00511" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                              <path d="M1 9H17" stroke="#C00511" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                              </svg>
                              Add list
                      </button>
                  </div>`;
  }
}
export default new HeaderMain();
