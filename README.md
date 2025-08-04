<a name="Englisch"></a>
# BetterBags - Scrap
[en] [de](#Deutsch)

# English

An external WoW addon that integrates with BetterBags and Scrap to display a coin icon on items marked as scrap (junk).

<img width="400" height="400" alt="ScrapCoinOverlay_400x400" src="https://github.com/user-attachments/assets/a67946a0-6366-4396-96c0-ea19d7b39c3d" />

---

## Preview

Normal items (no icon):

<img width="49" height="47" alt="normal_item" src="https://github.com/user-attachments/assets/bd6d56b9-33ee-4988-addc-69d208d5ff59" />


Scrap-marked items (with coin icon):

<img width="52" height="47" alt="scraped_item" src="https://github.com/user-attachments/assets/2dab3731-dcd8-4e3b-851a-ca681c1335ca" />


BetterBags in-game (overlay in action):

<img width="832" height="734" alt="Screenshot 2025-08-04 180056" src="https://github.com/user-attachments/assets/be4cf2ca-741f-4c7d-9c89-28c32f77b131" />

---

## Features

Displays a small gold coin icon at the top-right corner of all BetterBags slot buttons for junk items.

Dynamically reacts when toggling scrap status via the Scrap addon (ToggleJunk).

Supports both Backpack and Bank views.

Lightweight, with no dependencies other than BetterBags and Scrap.

---

## Installation

Download or clone the repository:
   ```bash
   git clone https://github.com/Padparadscha/BetterBags_Scrap.git
   ```


Copy the BetterBagsScrapOverlay folder into your WoW AddOns directory:
   ```text
   .../World of Warcraft/_retail_/Interface/AddOns/BetterBags_Scrap
   ```
   ```text
   .../World of Warcraft/_classic_/Interface/AddOns/BetterBags_Scrap
   ```

In-game, enable BetterBags and Scrap in the AddOns menu.

Reload the UI with /reload or restart the game.

---

## Usage

Open your Backpack or Bank using the BetterBags interface.

Items marked as junk in Scrap will show a gold coin icon in the top-right corner of their slot.

Toggling an item’s scrap status (e.g., with /scrap toggle <itemID>) will immediately update the icon.

---

## License

This addon is released under the MIT License. See [LICENSE](LICENSE) for details.

---

## Dependencies:

BetterBags (own license)

Scrap (own license)

Happy looting and junk cleanup!



---
<a name="Deutsch"></a>
# BetterBags - Scrap
[en](#Englisch) [de]

<img width="400" height="400" alt="ScrapCoinOverlay_400x400" src="https://github.com/user-attachments/assets/a67946a0-6366-4396-96c0-ea19d7b39c3d" />


Ein externes WoW-Addon, das in **BetterBags** und **Scrap** integriert ein **Münz-Icon** für als Schrott (Junk) markierte Gegenstände anzeigt.

---

## Vorschau

**Normale Gegenstände** (kein Icon):

<img width="49" height="47" alt="normal_item" src="https://github.com/user-attachments/assets/bd6d56b9-33ee-4988-addc-69d208d5ff59" />


**Scrap-Markierte Gegenstände** (mit Münz-Icon):

<img width="52" height="47" alt="scraped_item" src="https://github.com/user-attachments/assets/2dab3731-dcd8-4e3b-851a-ca681c1335ca" />


**BetterBags Screenshot** (Overlay im Spiel):

<img width="832" height="734" alt="Screenshot 2025-08-04 180056" src="https://github.com/user-attachments/assets/be4cf2ca-741f-4c7d-9c89-28c32f77b131" />


---

## Features

- Zeigt ein dezentes Goldmünz-Icon oben rechts auf allen BetterBags-Slot-Buttons für Junk-Items.
- Reagiert dynamisch auf das Umschalten in **Scrap** (`ToggleJunk`).
- Unterstützt sowohl Rucksack als auch Bank.
- Leichtgewichtig, keine weiteren Abhängigkeiten außer **BetterBags** und **Scrap**.

---

## Installation

1. Lade das Addon-Verzeichnis `BetterBags_Scrap` herunter oder klone das Repo:
   ```bash
   git clone https://github.com/Padparadscha/BetterBags_Scrap.git
   ```
2. Kopiere das Verzeichnis in dein WoW-Addon-Ordner:
   ```text
   .../World of Warcraft/_retail_/Interface/AddOns/BetterBags_Scrap
   ```
   ```text
   .../World of Warcraft/_classic_/Interface/AddOns/BetterBags_Scrap
   ```
3. Aktiviere im Spiel unter AddOns **BetterBags** und **Scrap**.
4. Starte das Spiel neu.

---

## Nutzung

- Öffne deinen Rucksack oder die Bank über das Standard-Bag-UI von BetterBags.
- Gegenstände, die in **Scrap** als Müll markiert sind, erhalten ein goldenes Münz-Icon oben rechts.
- Ändere die Scrap-Status eines Items (z. B. per `/scrap toggle <itemID>`), das Icon aktualisiert sich sofort.

---

## Lizenz

Dieses Addon steht unter der **MIT License**. Siehe [LICENSE](LICENSE) für Details.

Abhängigkeiten:
- **BetterBags** (eigene Lizenz)
- **Scrap** (eigene Lizenz)



*Viel Spaß beim Sammeln und Aufräumen!*

---

