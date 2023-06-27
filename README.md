
# Citizen safety app (UI)

This App was developed during Kavach Hackathon. This App helps to flag malicious/ fraud indicatorsin real-time.
- Mobile Number
- SMS Headers
- URL Links

The app will search the above mentioned aspects related data through the given database of suspects as fraud provided by Indian Cyber Crime Coordination Center(currently demo data)in real time. Through SVM algorithms in ML, live tracking and prediction of malicious data will be done through the app for the data which is not present in the database. On finding suspected link, number, header, UPI address etc. the app will notify the user before accessing that particular data and even it will provide option to mark as 'fraud' . This mark can be used for updation in database



## Screenshots

![App Screenshot](Screenshots/1.png)
![App Screenshot](Screenshots/2.png)




## Run Locally

Clone the project

```bash
  git clone https://github.com/Tanay-Gupta/hack_kav
```

Go to the project directory

```bash
  cd hack_kav
```

Install dependencies

```bash
  flutter pub get

```

Run the app:

```bash
  flutter run

```


## Contributing

Contributions are welcome! If you have any feature requests or bug reports, please feel free to open an issue or a pull request.

See `contributing.md` for ways to get started.

Please adhere to this project's `code of conduct`.


## License

This project is licensed under the [MIT License](https://choosealicense.com/licenses/mit/).

