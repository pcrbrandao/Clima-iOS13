public struct ClimaModel {
    public struct Request {
        public let cityName: String
        public let units: String
        
        public init(cityName: String, units: String) {
            self.cityName = cityName
            self.units = units
        }
    }
    
    public struct Result {
        public let temperature: String
        
        public init(temperature: String) {
            self.temperature = temperature
        }
    }
    
    public struct View {
        public let cityName: String
        public let temperature: String
        public let imageName: String
        
        public init(cityName: String,
                    temperature: String,
                    imageName: String) {
            self.cityName = cityName
            self.temperature = temperature
            self.imageName = imageName
        }
    }
}
