# **BBTAG Intro Delay Module (v1.0.5)**

*IKEMEN GO module by **dionednd**, commissioned by **SkeleJ64**.*

This module overhauls intro behavior to replicate **BlazBlue Cross Tag Battle–esque team intros**, adding camera controls, intro order logic, intro movement, special intros support, and more.

---

## **Features**

* **BBTAG**-style intro sequencing
* **Camera zoom & lag** parameters
* **Special intro detection** (via `intro_delay_specialintros.zss`)
* **Intro movement** (including optional taunt / tag disabling)
* **Music mute** and **winner/loser outro zoom** (from Foobs' **Extended Intro Winpose Module**)
* Simple intro **AI behavior** (from Foobs’ **Extended Intro Winpose Module**)

---

## **Installation**

1. Open **`data/config.ini`**
2. Find the **`States`** line under `[Common]`
3. Add the following to the end of the list:

```
, data/intro_delay_specialintros.zss, data/intro_delay.zss
```

4. Ensure this order:

```
1. intro_delay_specialintros.zss
2. intro_delay.zss
```

---

## **Special Intros**

Define special intros inside:

```
intro_delay_specialintros.zss
```

Add character name checks exactly as they appear in the character’s `.def` and pre-intro state.
When a special intro is active, the module automatically disables intro-delay logic for those characters.

---

## **Compatibility Notes**

* Tested with Foobs’ **Extended Intro Winpose Module**
* **Not fully compatible** with Foobs’ module; combining both may cause unpredictable behavior
* Some features from Foobs’ **Extended Intro Winpose Module** were integrated due to demand

---
