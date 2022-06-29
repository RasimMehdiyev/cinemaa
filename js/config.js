import { main_api } from "./api.js";
import axios from "axios";

export const getPopularMovies = async () => {
  return await axios.get(main_api).then((res) => {
    return res.data;
  });
};
