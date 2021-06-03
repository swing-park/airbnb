const baseURL: string = "http://54.180.21.249/";

const getApi = {
  main: () => fetch(`${baseURL}`),
  price: () => fetch(`${baseURL}rooms/price`),
};

const postApi = {
  rooms: (body: object) =>
    fetch(`${baseURL}rooms`, {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(body),
    }),
};

export { getApi, postApi };