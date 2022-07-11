import { img_path } from "../api.js";
class Videos {
  constructor() {
    this.container;
  }

  //   callFunctions() {
  //     this.container = document.querySelector("#actionandadvcontainer");
  //   }

  render(array) {
    array.forEach((data) => {
      const { link } = data;
      this.container.innerHTML += "";
      return (this.container.innerHTML += `
        <div class="continue_watching_container">
        <div class="continue_watching_card">
          <video
            controls
            type="video/mp4"
            src="${link}"
          ></video>
          <h3>Jumanji</h3>
        </div>
        <div class="continue_watching_card">
          <video
            controls
            src="https://www.youtube.com/watch?v=rBxcF-r9Ibs&ab_channel=SonyPicturesEntertainment"
          ></video>
          <h3>Jumanji</h3>
        </div>
        <div class="continue_watching_card">
          <video
            controls
            src="https://www.youtube.com/watch?v=FdeioVndUhs&ab_channel=NITVShorts"
          ></video>
          <h3>Jumanji</h3>
        </div>
      </div>;`);
    });
  }
}

export default new Videos();
