#seeds for application
states = State.create(
[
 { state_name: "Alabama", state_abbreviation: "AL"},
 { state_name: "Arizona", state_abbreviation: "AZ"},
 { state_name: "kansas", state_abbreviation: "AR"},
 { state_name: "California", state_abbreviation: "CA"},
 { state_name: "Colorado", state_abbreviation: "CO"},
 { state_name: "Connecticut", state_abbreviation: "CT"},
 { state_name: "Delawe", state_abbreviation: "DE"},
 { state_name: "Florida", state_abbreviation: "FL"},
 { state_name: "Georgia", state_abbreviation: "GA"},
 { state_name: "Idaho", state_abbreviation: "ID"},
 { state_name: "Illinois", state_abbreviation: "IL"},
 { state_name: "Indiana", state_abbreviation: "IN"},
 { state_name: "Iowa", state_abbreviation: "IA"},
 { state_name: "Kansas", state_abbreviation: "KS"},
 { state_name: "Kentucky", state_abbreviation: "KY"},
 { state_name: "Louisiana", state_abbreviation: "LA"},
 { state_name: "Maine", state_abbreviation: "ME"},
 { state_name: "Myland", state_abbreviation: "MD"},
 { state_name: "Massachusetts", state_abbreviation: "MA"},
 { state_name: "Michigan", state_abbreviation: "MI"},
 { state_name: "Minnesota", state_abbreviation: "MN"},
 { state_name: "Mississipi", state_abbreviation: "MS"},
 { state_name: "Missouri", state_abbreviation: "MO"},
 { state_name: "Montana", state_abbreviation: "MT"},
 { state_name: "Nebraska", state_abbreviation: "NE"},
 { state_name: "Nevada", state_abbreviation: "NV"},
 { state_name: "New Hampshire", state_abbreviation: "NH"},
 { state_name: "New Jersey", state_abbreviation: "NJ"},
 { state_name: "New Mexico", state_abbreviation: "NM"},
 { state_name: "New York", state_abbreviation: "NY"},
 { state_name: "North Colina", state_abbreviation: "NC"},
 { state_name: "North Dakota", state_abbreviation: "ND"},
 { state_name: "Ohio", state_abbreviation: "OH"},
 { state_name: "Oklahoma", state_abbreviation: "OK"},
 { state_name: "Oregon", state_abbreviation: "OR"},
 { state_name: "Pennsylvania", state_abbreviation: "PA"},
 { state_name: "Rhode Island", state_abbreviation: "RI"},
 { state_name: "South Colina", state_abbreviation: "SC"},
 { state_name: "South Dakota", state_abbreviation: "SD"},
 { state_name: "Tennessee", state_abbreviation: "TN"},
 { state_name: "Texas", state_abbreviation: "TX"},
 { state_name: "Utah", state_abbreviation: "UT"},
 { state_name: "Vermont", state_abbreviation: "VT"},
 { state_name: "Virginia", state_abbreviation: "VA"},
 { state_name: "Washington", state_abbreviation: "WA"},
 { state_name: "West Virginia", state_abbreviation: "WV"},
 { state_name: "Wisconsin", state_abbreviation: "WI"},
 { state_name: "Wyoming", state_abbreviation: "WY"}
 ]
)

droughts = Drought.create (
[
 { climate_id: 101, drought_severity: 1.97, year: 2016, state_abbreviation: "AL", user_id:1},
 { climate_id: 102, drought_severity: 1.04, year: 2016, state_abbreviation: "AL", user_id:1},
 { climate_id: 201, drought_severity: -1.14, year: 2016, state_abbreviation: "AZ", user_id:1},
 { climate_id: 202, drought_severity: 1.01, year: 2016, state_abbreviation: "AZ", user_id:1},
 { climate_id: 301, drought_severity: 3.74, year: 2016, state_abbreviation: "AR", user_id:1},
 { climate_id: 302, drought_severity: 3.33, year: 2016, state_abbreviation: "AR", user_id:1},
 { climate_id: 401, drought_severity: -1.18, year: 2016, state_abbreviation: "CA", user_id:1},
 { climate_id: 402, drought_severity: -1.6, year: 2016, state_abbreviation: "CA", user_id:1},
 { climate_id: 501, drought_severity: 2.39, year: 2016, state_abbreviation: "CO", user_id:1},
 { climate_id: 502, drought_severity: 1.96, year: 2016, state_abbreviation: "CO", user_id:1},
 { climate_id: 601, drought_severity: -2.95, year: 2016, state_abbreviation: "CT", user_id:1},
 { climate_id: 602, drought_severity: -3.67, year: 2016, state_abbreviation: "CT", user_id:1},
 { climate_id: 701, drought_severity: -1.45, year: 2016, state_abbreviation: "DE", user_id:1},
 { climate_id: 702, drought_severity: 0, year: 2016, state_abbreviation: "DE", user_id:1},
 { climate_id: 801, drought_severity: -0.78, year: 2016, state_abbreviation: "FL", user_id:1},
 { climate_id: 802, drought_severity: -1.59, year: 2016, state_abbreviation: "FL", user_id:1}, 
 { climate_id: 901, drought_severity: 2.07, year: 2016, state_abbreviation: "GA", user_id:1},
 { climate_id: 902, drought_severity: 3.61, year: 2016, state_abbreviation: "GA", user_id:1},
 { climate_id: 1001, drought_severity: -2.11, year: 2016, state_abbreviation: "ID", user_id:1}, 
 { climate_id: 1002, drought_severity: -2.66, year: 2016, state_abbreviation: "ID", user_id:1},
 { climate_id: 1101, drought_severity: 3.33, year: 2016, state_abbreviation: "IL", user_id:1},
 { climate_id: 1102, drought_severity: 3.01, year: 2016, state_abbreviation: "IL", user_id:1}, 
 { climate_id: 1201, drought_severity: 2.95, year: 2016, state_abbreviation: "IN", user_id:1},
 { climate_id: 1202, drought_severity: 1.17, year: 2016, state_abbreviation: "IN", user_id:1},
 { climate_id: 1301, drought_severity: 4.6, year: 2016, state_abbreviation: "IA", user_id:1},
 { climate_id: 1302, drought_severity: 4.08, year: 2016, state_abbreviation: "IA", user_id:1},
 { climate_id: 1401, drought_severity: 0.71, year: 2016, state_abbreviation: "KS", user_id:1},
 { climate_id: 1402, drought_severity: 1.43, year: 2016, state_abbreviation: "KS", user_id:1},
 { climate_id: 1501, drought_severity: 2.54, year: 2016, state_abbreviation: "KY", user_id:1},
 { climate_id: 1502, drought_severity: 2.12, year: 2016, state_abbreviation: "KY", user_id:1},
 { climate_id: 1601, drought_severity: 1.35, year: 2016, state_abbreviation: "LA", user_id:1},
 { climate_id: 1602, drought_severity: 1.13, year: 2016, state_abbreviation: "LA", user_id:1},
 { climate_id: 1701, drought_severity: 0.67, year: 2016, state_abbreviation: "ME", user_id:1},
 { climate_id: 1702, drought_severity: 0.95, year: 2016, state_abbreviation: "ME", user_id:1},
 { climate_id: 1801, drought_severity: 0.86, year: 2016, state_abbreviation: "MD", user_id:1},
 { climate_id: 1802, drought_severity: -0.64, year: 2016, state_abbreviation: "MD", user_id:1},
 { climate_id: 1901, drought_severity: -1.86, year: 2016, state_abbreviation: "MA", user_id:1},
 { climate_id: 1902, drought_severity: -2.11, year: 2016, state_abbreviation: "MA", user_id:1},
 { climate_id: 2001, drought_severity: -1.01, year: 2016, state_abbreviation: "MI", user_id:1},
 { climate_id: 2002, drought_severity: 1.06, year: 2016, state_abbreviation: "MI", user_id:1},
 { climate_id: 2101, drought_severity: -1.01, year: 2016, state_abbreviation: "MN", user_id:1},
 { climate_id: 2102, drought_severity: 1.06, year: 2016, state_abbreviation: "MN", user_id:1},
 { climate_id: 2201, drought_severity: 0, year: 2016, state_abbreviation: "MS", user_id:1},
 { climate_id: 2202, drought_severity: 0.85, year: 2016, state_abbreviation: "MS", user_id:1},
 { climate_id: 2301, drought_severity: 3.75, year: 2016, state_abbreviation: "MO", user_id:1},
 { climate_id: 2302, drought_severity: 4.68, year: 2016, state_abbreviation: "MO", user_id:1},
 { climate_id: 2401, drought_severity: -4.2, year: 2016, state_abbreviation: "MT", user_id:1},
 { climate_id: 2402, drought_severity: -1.32, year: 2016, state_abbreviation: "MT", user_id:1},
 { climate_id: 2501, drought_severity: 5.07, year: 2016, state_abbreviation: "NE", user_id:1},
 { climate_id: 2502, drought_severity: 3.92, year: 2016, state_abbreviation: "NE", user_id:1},
 { climate_id: 2601, drought_severity: -0.92, year: 2016, state_abbreviation: "NV", user_id:1},
 { climate_id: 2602, drought_severity: -0.98, year: 2016, state_abbreviation: "NV", user_id:1},
 { climate_id: 2701, drought_severity: 0, year: 2016, state_abbreviation: "NH", user_id:1},
 { climate_id: 2702, drought_severity: -0.73, year: 2016, state_abbreviation: "NH", user_id:1},
 { climate_id: 2801, drought_severity: -2.25, year: 2016, state_abbreviation: "NJ", user_id:1},
 { climate_id: 2802, drought_severity: -0.95, year: 2016, state_abbreviation: "NJ", user_id:1},
 { climate_id: 2901, drought_severity: 1.58, year: 2016, state_abbreviation: "NM", user_id:1},
 { climate_id: 2902, drought_severity: 2.82, year: 2016, state_abbreviation: "NM", user_id:1},
 { climate_id: 3001, drought_severity: 1.06, year: 2016, state_abbreviation: "NY", user_id:1},
 { climate_id: 3002, drought_severity: -0.83, year: 2016, state_abbreviation: "NY", user_id:1},
 { climate_id: 3101, drought_severity: 1.54, year: 2016, state_abbreviation: "NC", user_id:1},
 { climate_id: 3102, drought_severity: 3.17, year: 2016, state_abbreviation: "NC", user_id:1},
 { climate_id: 3201, drought_severity: -1.1, year: 2016, state_abbreviation: "ND", user_id:1},
 { climate_id: 3202, drought_severity: -1.03, year: 2016, state_abbreviation: "ND", user_id:1},
 { climate_id: 3301, drought_severity: 1.97, year: 2016, state_abbreviation: "OH", user_id:1},
 { climate_id: 3302, drought_severity: 1.25, year: 2016, state_abbreviation: "OH", user_id:1},
 { climate_id: 3401, drought_severity: 4.27, year: 2016, state_abbreviation: "OK", user_id:1},
 { climate_id: 3402, drought_severity: 2.31, year: 2016, state_abbreviation: "OK", user_id:1},
 { climate_id: 3501, drought_severity: -1.23, year: 2016, state_abbreviation: "OR", user_id:1},
 { climate_id: 3502, drought_severity: -1.31, year: 2016, state_abbreviation: "OR", user_id:1},
 { climate_id: 3601, drought_severity: -1.43, year: 2016, state_abbreviation: "PA", user_id:1},
 { climate_id: 3602, drought_severity: 0, year: 2016, state_abbreviation: "PA", user_id:1},
 { climate_id: 3701, drought_severity: -1.84, year: 2016, state_abbreviation: "RI", user_id:1},
 { climate_id: 3801, drought_severity: 2.87, year: 2016, state_abbreviation: "SC", user_id:1},
 { climate_id: 3802, drought_severity: 3.61, year: 2016, state_abbreviation: "SC", user_id:1},
 { climate_id: 3901, drought_severity: 2.97, year: 2016, state_abbreviation: "SD", user_id:1},
 { climate_id: 3902, drought_severity: 2.63, year: 2016, state_abbreviation: "SD", user_id:1},
 { climate_id: 4001, drought_severity: 2.51, year: 2016, state_abbreviation: "TN", user_id:1},
 { climate_id: 4002, drought_severity: 2.71, year: 2016, state_abbreviation: "TN", user_id:1},
 { climate_id: 4101, drought_severity: 4.84, year: 2016, state_abbreviation: "TX", user_id:1},
 { climate_id: 4102, drought_severity: 3.71, year: 2016, state_abbreviation: "TX", user_id:1},
 { climate_id: 4201, drought_severity: -0.84, year: 2016, state_abbreviation: "UT", user_id:1},
 { climate_id: 4202, drought_severity: -0.72, year: 2016, state_abbreviation: "UT", user_id:1},
 { climate_id: 4301, drought_severity: 0, year: 2016, state_abbreviation: "VT", user_id:1},
 { climate_id: 4302, drought_severity: -1.35, year: 2016, state_abbreviation: "VT", user_id:1},
 { climate_id: 4401, drought_severity: 1.59, year: 2016, state_abbreviation: "VA", user_id:1},
 { climate_id: 4402, drought_severity: 1.41, year: 2016, state_abbreviation: "VA", user_id:1},
 { climate_id: 4501, drought_severity: -0.67, year: 2016, state_abbreviation: "WA", user_id:1},
 { climate_id: 4502, drought_severity: 2.15, year: 2016, state_abbreviation: "WA", user_id:1},
 { climate_id: 4601, drought_severity: 0.68, year: 2016, state_abbreviation: "WV", user_id:1},
 { climate_id: 4602, drought_severity: -1.29, year: 2016, state_abbreviation: "WV",  user_id:1},
 { climate_id: 4701, drought_severity: 3.14, year: 2016, state_abbreviation: "WI", user_id:1},
 { climate_id: 4702, drought_severity: 2.06, year: 2016, state_abbreviation: "WI", user_id:1},
 { climate_id: 4801, drought_severity: -1.62, year: 2016, state_abbreviation: "WY", user_id:1},
 { climate_id: 4802, drought_severity: -0.9, year: 2016, state_abbreviation: "WY", user_id:1}
]
)

precipitations = Precipitation.create (
[
 { climate_id: 101, per_year: 4.17, year: 2016, state_abbreviation: "AL", user_id:1},
 { climate_id: 102, per_year: 3.47, year: 2016, state_abbreviation: "AL", user_id:1},
 { climate_id: 201, per_year: 1.4, year: 2016, state_abbreviation: "AZ", user_id:1},
 { climate_id: 202, per_year: 2.14, year: 2016, state_abbreviation: "AZ", user_id:1},
 { climate_id: 301, per_year: 0.99, year: 2016, state_abbreviation: "AR", user_id:1},
 { climate_id: 302, per_year: 1.13, year: 2016, state_abbreviation: "AR", user_id:1},
 { climate_id: 401, per_year: 14.13, year: 2016, state_abbreviation: "CA", user_id:1},
 { climate_id: 402, per_year: 10.38, year: 2016, state_abbreviation: "CA", user_id:1},
 { climate_id: 501, per_year: 0.38, year: 2016, state_abbreviation: "CO", user_id:1},
 { climate_id: 502, per_year: 1.93, year: 2016, state_abbreviation: "CO", user_id:1},
 { climate_id: 601, per_year: 1.81, year: 2016, state_abbreviation: "CT", user_id:1},
 { climate_id: 602, per_year: 2.08, year: 2016, state_abbreviation: "CT", user_id:1},
 { climate_id: 701, per_year: 2.65, year: 2016, state_abbreviation: "DE", user_id:1},
 { climate_id: 702, per_year: 3.12, year: 2016, state_abbreviation: "DE", user_id:1},
 { climate_id: 801, per_year: 4.61, year: 2016, state_abbreviation: "FL", user_id:1},
 { climate_id: 802, per_year: 3.75, year: 2016, state_abbreviation: "FL", user_id:1}, 
 { climate_id: 901, per_year: 3.45, year: 2016, state_abbreviation: "GA", user_id:1},
 { climate_id: 902, per_year: 4.47, year: 2016, state_abbreviation: "GA", user_id:1},
 { climate_id: 1001, per_year: 4.40, year: 2016, state_abbreviation: "ID", user_id:1}, 
 { climate_id: 1002, per_year: 3.41, year: 2016, state_abbreviation: "ID", user_id:1},
 { climate_id: 1101, per_year: 0.6, year: 2016, state_abbreviation: "IL", user_id:1},
 { climate_id: 1102, per_year: 0.74, year: 2016, state_abbreviation: "IL", user_id:1}, 
 { climate_id: 1201, per_year: 1.1, year: 2016, state_abbreviation: "IN", user_id:1},
 { climate_id: 1202, per_year: 1.7, year: 2016, state_abbreviation: "IN", user_id:1},
 { climate_id: 1301, per_year: 1.3, year: 2016, state_abbreviation: "IA", user_id:1},
 { climate_id: 1302, per_year: 0.4, year: 2016, state_abbreviation: "IA", user_id:1},
 { climate_id: 1401, per_year: 0.6, year: 2016, state_abbreviation: "KS", user_id:1},
 { climate_id: 1402, per_year: 0.78, year: 2016, state_abbreviation: "KS", user_id:1},
 { climate_id: 1501, per_year: 2.03, year: 2016, state_abbreviation: "KY", user_id:1},
 { climate_id: 1502, per_year: 1.67, year: 2016, state_abbreviation: "KY", user_id:1},
 { climate_id: 1601, per_year: 3.14, year: 2016, state_abbreviation: "LA", user_id:1},
 { climate_id: 1602, per_year: 4.46, year: 2016, state_abbreviation: "LA", user_id:1},
 { climate_id: 1701, per_year: 2.16, year: 2016, state_abbreviation: "ME", user_id:1},
 { climate_id: 1702, per_year: 2.92, year: 2016, state_abbreviation: "ME", user_id:1},
 { climate_id: 1801, per_year: 3.23, year: 2016, state_abbreviation: "MD", user_id:1},
 { climate_id: 1802, per_year: 2.7, year: 2016, state_abbreviation: "MD", user_id:1},
 { climate_id: 1901, per_year: 1.8, year: 2016, state_abbreviation: "MA", user_id:1},
 { climate_id: 1902, per_year: 2.13, year: 2016, state_abbreviation: "MA", user_id:1},
 { climate_id: 2001, per_year: 1.78, year: 2016, state_abbreviation: "MI", user_id:1},
 { climate_id: 2002, per_year: 2.49, year: 2016, state_abbreviation: "MI", user_id:1},
 { climate_id: 2101, per_year: 0.49, year: 2016, state_abbreviation: "MN", user_id:1},
 { climate_id: 2102, per_year: 0.54, year: 2016, state_abbreviation: "MN", user_id:1},
 { climate_id: 2201, per_year: 3.28, year: 2016, state_abbreviation: "MS", user_id:1},
 { climate_id: 2202, per_year: 3.17, year: 2016, state_abbreviation: "MS", user_id:1},
 { climate_id: 2301, per_year: 0.86, year: 2016, state_abbreviation: "MO", user_id:1},
 { climate_id: 2302, per_year: 0.77, year: 2016, state_abbreviation: "MO", user_id:1},
 { climate_id: 2401, per_year: 2.61, year: 2016, state_abbreviation: "MT", user_id:1},
 { climate_id: 2402, per_year: 1.1, year: 2016, state_abbreviation: "MT", user_id:1},
 { climate_id: 2501, per_year: 0.16, year: 2016, state_abbreviation: "NE", user_id:1},
 { climate_id: 2502, per_year: 0.3, year: 2016, state_abbreviation: "NE", user_id:1},
 { climate_id: 2601, per_year: 1.86, year: 2016, state_abbreviation: "NV", user_id:1},
 { climate_id: 2602, per_year: 1.93, year: 2016, state_abbreviation: "NV", user_id:1},
 { climate_id: 2701, per_year: 2.03, year: 2016, state_abbreviation: "NH", user_id:1},
 { climate_id: 2702, per_year: 1.91, year: 2016, state_abbreviation: "NH", user_id:1},
 { climate_id: 2801, per_year: 3.39, year: 2016, state_abbreviation: "NJ", user_id:1},
 { climate_id: 2802, per_year: 3.2, year: 2016, state_abbreviation: "NJ", user_id:1},
 { climate_id: 2901, per_year: 0.75, year: 2016, state_abbreviation: "NM", user_id:1},
 { climate_id: 2902, per_year: 0.83, year: 2016, state_abbreviation: "NM", user_id:1},
 { climate_id: 3001, per_year: 1.7, year: 2016, state_abbreviation: "NY", user_id:1},
 { climate_id: 3002, per_year: 1.72, year: 2016, state_abbreviation: "NY", user_id:1},
 { climate_id: 3101, per_year: 3.3, year: 2016, state_abbreviation: "NC", user_id:1},
 { climate_id: 3102, per_year: 2.58, year: 2016, state_abbreviation: "NC", user_id:1},
 { climate_id: 3201, per_year: 0.39, year: 2016, state_abbreviation: "ND", user_id:1},
 { climate_id: 3202, per_year: 0.21, year: 2016, state_abbreviation: "ND", user_id:1},
 { climate_id: 3301, per_year: 1.36, year: 2016, state_abbreviation: "OH", user_id:1},
 { climate_id: 3302, per_year: 1.41, year: 2016, state_abbreviation: "OH", user_id:1},
 { climate_id: 3401, per_year: 0.38, year: 2016, state_abbreviation: "OK", user_id:1},
 { climate_id: 3402, per_year: 0.65, year: 2016, state_abbreviation: "OK", user_id:1},
 { climate_id: 3501, per_year: 16.62, year: 2016, state_abbreviation: "OR", user_id:1},
 { climate_id: 3502, per_year: 9.21, year: 2016, state_abbreviation: "OR", user_id:1},
 { climate_id: 3601, per_year: 2.51, year: 2016, state_abbreviation: "PA", user_id:1},
 { climate_id: 3602, per_year: 3.29, year: 2016, state_abbreviation: "PA", user_id:1},
 { climate_id: 3701, per_year: 3.1, year: 2016, state_abbreviation: "RI", user_id:1},
 { climate_id: 3801, per_year: 3.9, year: 2016, state_abbreviation: "SC", user_id:1},
 { climate_id: 3802, per_year: 3.2, year: 2016, state_abbreviation: "SC", user_id:1},
 { climate_id: 3901, per_year: 0.15, year: 2016, state_abbreviation: "SD", user_id:1},
 { climate_id: 3902, per_year: 0.14, year: 2016, state_abbreviation: "SD", user_id:1},
 { climate_id: 4001, per_year: 2.91, year: 2016, state_abbreviation: "TN", user_id:1},
 { climate_id: 4002, per_year: 2.37, year: 2016, state_abbreviation: "TN", user_id:1},
 { climate_id: 4101, per_year: 0.22, year: 2016, state_abbreviation: "TX", user_id:1},
 { climate_id: 4102, per_year: 0.29, year: 2016, state_abbreviation: "TX", user_id:1},
 { climate_id: 4201, per_year: 1.19, year: 2016, state_abbreviation: "UT", user_id:1},
 { climate_id: 4202, per_year: 2.03, year: 2016, state_abbreviation: "UT", user_id:1},
 { climate_id: 4301, per_year: 1.68, year: 2016, state_abbreviation: "VT", user_id:1},
 { climate_id: 4302, per_year: 1.56, year: 2016, state_abbreviation: "VT", user_id:1},
 { climate_id: 4401, per_year: 3.18, year: 2016, state_abbreviation: "VA", user_id:1},
 { climate_id: 4402, per_year: 2.83, year: 2016, state_abbreviation: "VA", user_id:1},
 { climate_id: 4501, per_year: 19.18, year: 2016, state_abbreviation: "WA", user_id:1},
 { climate_id: 4502, per_year: 3.73, year: 2016, state_abbreviation: "WA", user_id:1},
 { climate_id: 4601, per_year: 1.85, year: 2016, state_abbreviation: "WV", user_id:1},
 { climate_id: 4602, per_year: 2.55, year: 2016, state_abbreviation: "WV",  user_id:1},
 { climate_id: 4701, per_year: 0.64, year: 2016, state_abbreviation: "WI", user_id:1},
 { climate_id: 4702, per_year: 0.93, year: 2016, state_abbreviation: "WI", user_id:1},
 { climate_id: 4801, per_year: 1.88, year: 2016, state_abbreviation: "WY", user_id:1},
 { climate_id: 4802, per_year: 3.58, year: 2016, state_abbreviation: "WY", user_id:1}
]
)



regions = Region.create (
[
 { climate_id: 101, state_abbreviation: "AL"},
 { climate_id: 102, state_abbreviation: "AL"},
 { climate_id: 201, state_abbreviation: "AZ"},
 { climate_id: 202, state_abbreviation: "AZ"},
 { climate_id: 301, state_abbreviation: "AR"},
 { climate_id: 302, state_abbreviation: "AR"},
 { climate_id: 401, state_abbreviation: "CA"},
 { climate_id: 402, state_abbreviation: "CA"},
 { climate_id: 501, state_abbreviation: "CO"},
 { climate_id: 502, state_abbreviation: "CO"},
 { climate_id: 601, state_abbreviation: "CT"},
 { climate_id: 602, state_abbreviation: "CT"},
 { climate_id: 701, state_abbreviation: "DE"},
 { climate_id: 702, state_abbreviation: "DE"},
 { climate_id: 801, state_abbreviation: "FL"},
 { climate_id: 802, state_abbreviation: "FL"}, 
 { climate_id: 901, state_abbreviation: "GA"},
 { climate_id: 902, state_abbreviation: "GA"},
 { climate_id: 1001, state_abbreviation: "ID"}, 
 { climate_id: 1002, state_abbreviation: "ID"},
 { climate_id: 1101, state_abbreviation: "IL"},
 { climate_id: 1102, state_abbreviation: "IL"}, 
 { climate_id: 1201, state_abbreviation: "IN"},
 { climate_id: 1202, state_abbreviation: "IN"},
 { climate_id: 1301, state_abbreviation: "IA"},
 { climate_id: 1302, state_abbreviation: "IA"},
 { climate_id: 1401, state_abbreviation: "KS"},
 { climate_id: 1402, state_abbreviation: "KS"},
 { climate_id: 1501, state_abbreviation: "KY"},
 { climate_id: 1502, state_abbreviation: "KY"},
 { climate_id: 1601, state_abbreviation: "LA"},
 { climate_id: 1602, state_abbreviation: "LA"},
 { climate_id: 1701, state_abbreviation: "ME"},
 { climate_id: 1702, state_abbreviation: "ME"},
 { climate_id: 1801, state_abbreviation: "MD"},
 { climate_id: 1802, state_abbreviation: "MD"},
 { climate_id: 1901, state_abbreviation: "MA"},
 { climate_id: 1902, state_abbreviation: "MA"},
 { climate_id: 2001, state_abbreviation: "MI"},
 { climate_id: 2002, state_abbreviation: "MI"},
 { climate_id: 2101, state_abbreviation: "MN"},
 { climate_id: 2102, state_abbreviation: "MN"},
 { climate_id: 2201, state_abbreviation: "MS"},
 { climate_id: 2202, state_abbreviation: "MS"},
 { climate_id: 2301, state_abbreviation: "MO"},
 { climate_id: 2302, state_abbreviation: "MO"},
 { climate_id: 2401, state_abbreviation: "MT"},
 { climate_id: 2402, state_abbreviation: "MT"},
 { climate_id: 2501, state_abbreviation: "NE"},
 { climate_id: 2502, state_abbreviation: "NE"},
 { climate_id: 2601, state_abbreviation: "NV"},
 { climate_id: 2602, state_abbreviation: "NV"},
 { climate_id: 2701, state_abbreviation: "NH"},
 { climate_id: 2702, state_abbreviation: "NH"},
 { climate_id: 2801, state_abbreviation: "NJ"},
 { climate_id: 2802, state_abbreviation: "NJ"},
 { climate_id: 2901, state_abbreviation: "NM"},
 { climate_id: 2902, state_abbreviation: "NM"},
 { climate_id: 3001, state_abbreviation: "NY"},
 { climate_id: 3002, state_abbreviation: "NY"},
 { climate_id: 3101, state_abbreviation: "NC"},
 { climate_id: 3102, state_abbreviation: "NC"},
 { climate_id: 3201, state_abbreviation: "ND"},
 { climate_id: 3202, state_abbreviation: "ND"},
 { climate_id: 3301, state_abbreviation:"OH"},
 { climate_id: 3302, state_abbreviation: "OH"},
 { climate_id: 3401, state_abbreviation: "OK"},
 { climate_id: 3402, state_abbreviation: "OK"},
 { climate_id: 3501, state_abbreviation:"OR"},
 { climate_id: 3502, state_abbreviation: "OR"},
 { climate_id: 3601, state_abbreviation: "PA"},
 { climate_id: 3602, state_abbreviation: "PA"},
 { climate_id: 3701, state_abbreviation: "RI"},
 { climate_id: 3801, state_abbreviation: "SC"},
 { climate_id: 3802, state_abbreviation: "SC"},
 { climate_id: 3901, state_abbreviation: "SD"},
 { climate_id: 3902, state_abbreviation: "SD"},
 { climate_id: 4001, state_abbreviation: "TN"},
 { climate_id: 4002, state_abbreviation: "TN"},
 { climate_id: 4101, state_abbreviation: "TX"},
 { climate_id: 4102, state_abbreviation: "TX"},
 { climate_id: 4201, state_abbreviation: "UT"},
 { climate_id: 4202, state_abbreviation: "UT"},
 { climate_id: 4301, state_abbreviation: "VT"},
 { climate_id: 4302, state_abbreviation: "VT"},
 { climate_id: 4401, state_abbreviation: "VA"},
 { climate_id: 4402, state_abbreviation: "VA"},
 { climate_id: 4501, state_abbreviation: "WA"},
 { climate_id: 4502, state_abbreviation: "WA"},
 { climate_id: 4601, state_abbreviation: "WV"},
 { climate_id: 4602, state_abbreviation: "WV"},
 { climate_id: 4701, state_abbreviation: "WI"},
 { climate_id: 4702, state_abbreviation: "WI"},
 { climate_id: 4801, state_abbreviation: "WY"},
 { climate_id: 4802, state_abbreviation: "WY"}
]
)

users = User.create(
  [
    { email: 'a@a.com', name: "Mr. Aardvark", password: "a", password_confirmation: "a"},
    { email: 'b@b.com', name: "Mr. Bear", password: "b", password_confirmation: "b"},
    { email: 'c@c.com', name: "Mr. Cat", password: "c", password_confirmation: "c"},
    { email: 'd@d.com', name: "Mr. Dog", password: "d", password_confirmation: "d"},
    { email: 'e@e.com', name: "Mr. Elephant", password: "e", password_confirmation: "e"},
    { email: 'f@f.com', name: "Mr. Fox", password: "f", password_confirmation: "f"},
    { email: 'g@g.com', name: "Mr. Gopher", password: "g", password_confirmation: "g"},
    { email: 'h@h.com', name: "Mr. Horse", password: "h", password_confirmation: "h"},
    { email: 'i@i.com', name: "Mr. Iguana", password: "i", password_confirmation: "i"},
    { email: 'j@j.com', name: "Mr. Jackrabbit", password: "j", password_confirmation: "j"},
    { email: 'k@k.com', name: "Mr. Kangaroo", password: "k", password_confirmation: "k"},
    { email: 'l@l.com', name: "Mr. Llama", password: "l", password_confirmation: "l"},
    { email: 'm@m.com', name: "Mr. Mouse", password: "m", password_confirmation: "m"},
    { email: 'n@n.com', name: "Mr. Numbat", password: "n", password_confirmation: "n"},
    { email: 'o@o.com', name: "Mr. Opossum", password: "o", password_confirmation: "o"},
    { email: 'p@p.com', name: "Mr. Peacock", password: "p", password_confirmation: "p"},
    { email: 'q@q.com', name: "Mr. Quail", password: "q", password_confirmation: "q"},
    { email: 'r@r.com', name: "Mr. Rabbit", password: "r", password_confirmation: "r"},
    { email: 's@s.com', name: "Mr. Snake", password: "s", password_confirmation: "s"},
    { email: 't@t.com', name: "Mr. Tiger", password: "t", password_confirmation: "t"},
    { email: 'u@u.com', name: "Mr. Urial", password: "u", password_confirmation: "u"},
    { email: 'v@v.com', name: "Mr. Vulture", password: "v", password_confirmation: "v"},
    { email: 'w@w.com', name: "Mr. Wombat", password: "w", password_confirmation: "w"},
    { email: 'x@x.com', name: "Mr. Xenons", password: "x", password_confirmation: "x"},
    { email: 'y@y.com', name: "Mr. Yak", password: "y", password_confirmation: "y"},
    { email: 'z@z.com', name: "Mr. Zebra", password: "z", password_confirmation: "z"},
  ]
)

