# BetterBags Scrap Overlay

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

1. Lade das Addon-Verzeichnis `BetterBagsScrapOverlay` herunter oder klone das Repo:
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

---

*Viel Spaß beim Sammeln und Aufräumen!*
