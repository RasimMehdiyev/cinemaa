import { main_api } from "./api.js";
import axios from "axios";

export const getPopularMovies = async () => {
  return await axios.get(main_api).then((res) => {
    return res.data;
  });
};

export const getVideos = async () => {
  axios.get("/video/").then((res) => {
    return res.data;
  });
};

export const getActionandAdventure = async () => {
  return await axios.get(main_api).then((res) => {
    return res.data;
  });
};

export const getBestComedies = async () => {
  return await axios.get(main_api).then((res) => {
    return res.data;
  });
};
