//
//  ViewController.swift
//  Wheather
//
//  Created by SamoYed on 2023/03/14.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var weatherStackView: UIStackView!
    @IBOutlet weak var minTempLabel: UILabel!
    @IBOutlet weak var maxTempLabel: UILabel!
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var weatherDecriptionLabel: UILabel!
    @IBOutlet weak var CityNameLabel: UILabel!
    @IBOutlet weak var CityNameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tapFetchWeatherButton(_ sender: UIButton) {
        if let cityName = self.CityNameTextField.text {
            //            self.getCurrentWeather(cityName: cityName)
            self.getWeatherLoc(cityName: cityName)
            self.view.endEditing(true)
        }
    }
    
        func ConfigView(weatherInfo:WeatherInfo){
            self.CityNameLabel.text = weatherInfo.name
            if let weather = weatherInfo.weather.first {
                self.weatherDecriptionLabel.text = weather.description
            }
            self.tempLabel.text = "\(Int(weatherInfo.temp.temp))°C"
            self.minTempLabel.text = "최저: \(Int(weatherInfo.temp.minTemp))°C"
            self.maxTempLabel.text = "최대: \(Int(weatherInfo.temp.maxTemp))°C"
        }
    //
    //    func getWeatherLoc(cityName:String){
    //        guard let url = URL(string:"http://api.openweathermap.org/geo/1.0/direct?q=\(cityName)&appid=c818c9ad59997d8c3df5e458ec8de8fa") else { return }
    //        let session = URLSession(configuration: .default)
    //        session.dataTask(with: url) {
    //            [weak self] data, response, error in
    //            guard let data = data, error == nil else { return print("error")}
    //            let decoder = JSONDecoder()
    //            guard let getweatherLoc = try? decoder.decode(WeatherLocation.self, from: data) else { return print("error") }
    //            debugPrint(getweatherLoc.lon)
    //            DispatchQueue.main.async {
    //                self?.getCurrentWeather(lat: getweatherLoc.lat, lon: getweatherLoc.lon)
    //            }
    //        }.resume()
    //    }
    //
    //
    //
    ////                 WeatherInfo
    //    func getCurrentWeather(lat:Double, lon:Double) {
    //        guard let url = URL(string:"https://api.openweathermap.org/data/3.0/onecall?lat=\(lat)&lon=\(lon)&units=metric&appid=c818c9ad59997d8c3df5e458ec8de8fa") else { return }
    //        let session = URLSession(configuration: .default)
    //        session.dataTask(with: url) {
    //            [weak self] data, response, error in
    //            guard let data = data, error == nil else { return }
    //            let decoder = JSONDecoder()
    //            guard let weatherInfo = try? decoder.decode(WeatherInfo.self, from: data) else { return }
    //            debugPrint(weatherInfo)
    //            DispatchQueue.main.async {
    //                self?.weatherStackView.isHidden = false
    //                self?.ConfigView(weatherInfo: weatherInfo)
    //
    //            }
    //        } .resume()
    //    }
    //}
    //
    //
    
    func getWeatherLoc(cityName:String){
        guard let url = URL(string:"http://api.openweathermap.org/geo/1.0/direct?q=\(cityName)&appid=c818c9ad59997d8c3df5e458ec8de8fa") else { return }
        let session = URLSession(configuration: .default)
        session.dataTask(with: url) {
            [weak self] data, response, error in
            if let error = error {
                print("getWeatherLoc error:", error.localizedDescription)
                return
            }
            guard let data = data else {
                print("getWeatherLoc error: no data")
                return
            }
            guard let getweatherLoc = try? JSONDecoder().decode([WeatherLocation].self, from: data) else { return }
            debugPrint(getweatherLoc[0].lat)
            DispatchQueue.main.async {
                self?.getCurrentWeather(lat: getweatherLoc[0].lat, lon: getweatherLoc[0].lon)
            }
        }.resume()
    }
    
    func getCurrentWeather(lat:Double, lon:Double) {
        guard let url = URL(string:"https://api.openweathermap.org/data/2.5/weather?lat=\(lat)&lon=\(lon)&units=metric&appid=c818c9ad59997d8c3df5e458ec8de8fa") else { return }
        let session = URLSession(configuration: .default)
        session.dataTask(with: url) {
            [weak self] data, response, error in
            if let error = error {
                print("getCurrentWeather error:", error.localizedDescription)
                return
            }
            guard let data = data else {
                print("getCurrentWeather error: no data")
                return
            }
            let decoder = JSONDecoder()
            guard let weatherInfo = try? decoder.decode(WeatherInfo.self, from: data) else {
                print("getCurrentWeather error: decoding error", print(url))
                return
            }
            debugPrint(weatherInfo)
            DispatchQueue.main.async {
                self?.weatherStackView.isHidden = false
                self?.ConfigView(weatherInfo: weatherInfo)
            }
        } .resume()
    }
    
}
