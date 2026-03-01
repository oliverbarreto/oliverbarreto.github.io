---
layout: page
title: Terremotos Canarias
excerpt: "Real-time earthquake monitoring for the Canary Islands on iOS and macOS"
permalink: /terremotoscanarias/
---

# ![Terremotos Canarias logo](/downloads/terremotocanarias-icon128.png "Real-time earthquake monitoring for the Canary Islands") Terremotos Canarias - Real-time earthquake monitoring for the Canary Islands

**iOS & macOS** — Stay informed with official IGN data.

Terremotos Canarias is a native app for iPhone, iPad, and Mac that shows real-time earthquakes in the Canary Islands. Built with SwiftUI and SwiftData, it uses official data from Spain's Instituto Geográfico Nacional (IGN) so you always have accurate, up-to-date information.

## Why monitor earthquakes in the Canary Islands?

The Canary Islands are volcanically active. Earthquakes and volcanic activity are part of life there. Whether you live in the archipelago, have family there, or travel frequently, staying informed matters:

- **Early awareness** when seismic activity increases
- **Context** for swarms and clusters that may signal volcanic unrest
- **Peace of mind** with reliable, official data instead of social media noise

## Key features

### **Real-time earthquake list**

- Live list of recent events with magnitude badges and colour coding
- Filter by category of magnitude and date
- Pull-to-refresh with last-updated timestamp
- Row detail view for depth, location, and time

### **Interactive map**

- Map view with custom annotations
- Pulsating animation on the latest event
- See where earthquakes occur across the islands

### **Smart notifications**

- Local push notifications with configurable magnitude threshold
- Proximity-based alerts when you are near activity
- Swarm detection (10 in 10 min, 30 in 1 h, 100 in 2 h, 1000 in 24 h)
- Master toggle—location services start only when you enable notifications

### **History & stats**

- Full event log with category and date filters
- Stats page with charts and earthquake statistics

### **Information & safety**

- Mercalli scale reference
- Safety tips for seismic events

### **macOS-specific features**

- Native macOS app ready for Apple Silicon
- macOS-specific UI and custom keyboard shortcuts for native Mac experience

## Data source

Terremotos Canarias uses data from the **Instituto Geográfico Nacional (IGN)**, Spain's official national geographic institute. Data is fetched directly from IGN's public sources.

## Download

Download the latest macOS version. iOS version for iPhone and iPad are not available in the App Store yet.

![Terremotos Canarias logo](/downloads/terremotocanarias-icon32.png "Download Terremotos Canarias") [Terremotos Canarias v0.2.0](https://oliverbarreto.com/downloads/terromotoscanarias-v0.2.0.zip)

## Requirements

- **iOS**: iOS 17 or later
- **macOS**: macOS 14 (Sonoma) or later
- **Storage**: Minimal (SwiftData local persistence)

## Installation

### iOS / iPadOS

Not published yet in the App Store.

### macOS

1. **Download** the ZIP file from the link above
2. **Extract** the app from the archive
3. **Move** Terremotos Canarias to your Applications folder
4. **Launch** the app (first launch may require right-click → Open to allow a non-App Store app)
5. Grant **location access** and **notifications access** if you want proximity-based notifications

## Internationalization

Terremotos Canarias is available in **Spanish**, **English**, **French**, **German**, **Italian**.

## Changelog

### v0.2.0 (Current)

- Added macOS-specific features, improved UI and keyboard shortcuts for native Mac experience
- Native macOS app (replaced Mac Catalyst)
- Stats page with earthquake statistics and charts
- Restructured macOS UI for native Mac experience
- Reorganised iOS page structure and navbar
- Fixed search handling for Spanish special characters (e.g. "atlántico")

### v0.1.0

- Initial MVP: real-time earthquake list via IGN data
- Interactive map with custom annotations
- History page with filters
- Local push notifications (magnitude, proximity, swarm detection)
- SwiftData persistence, pull-to-refresh
- Mercalli scale reference and safety tips in Info view
