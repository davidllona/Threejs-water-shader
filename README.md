# Threejs-water-shader

Real-time procedural ocean simulation built with Three.js and custom GLSL shaders.

## Live Demo
👉 https://tu-demo.vercel.app/

## What is this?

This project is a real-time ocean simulation created using custom vertex and fragment shaders.

The water surface is generated procedurally by combining:
- Large scale sine waves (main motion)
- Perlin noise (small chaotic details)
- Multi-layered wave deformation

The goal is to simulate a dynamic and natural-looking ocean surface entirely on the GPU.

---

## Features

- Real-time wave animation using GLSL
- Procedural vertex displacement
- Perlin noise-based micro waves
- Depth-based color blending
- Foam generation on wave peaks
- Dynamic highlights for water reflections
- Interactive controls using lil-gui

---

## Key concepts

### 1. Vertex displacement
Vertices are moved along the Y axis using wave functions and noise.

### 2. Procedural noise (Perlin)
Noise is used to break uniform patterns and create natural randomness.

### 3. Color interpolation
Water color is blended based on elevation:
- Deep areas → darker color
- Peaks → lighter color

### 4. Foam generation
Foam appears on the highest parts of waves using smoothstep.

### 5. Real-time rendering
All calculations happen on the GPU using GLSL shaders.

---

## Tech stack

- Three.js
- GLSL (vertex & fragment shaders)
- lil-gui

---

## Installation

```bash
npm install
npm run dev
