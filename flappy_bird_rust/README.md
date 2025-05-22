# Flappy Bird Rust

This project is a Rust implementation of the classic Flappy Bird game using the Bevy game engine. 

## Project Structure

```
flappy_bird_rust
├── src
│   ├── main.rs        # Entry point of the application
│   ├── lib.rs         # Library root for shared functionality
│   ├── bird.rs        # Bird struct and movement logic
│   ├── pipes.rs       # Pipe generation and obstacle logic
│   ├── collision.rs    # Collision detection between bird and pipes
│   └── score.rs       # Scoring system and UI updates
├── Cargo.toml         # Project configuration and dependencies
└── README.md          # Project documentation
```

## Setup Instructions

1. Ensure you have Rust and Cargo installed on your machine. You can install them from [rustup.rs](https://rustup.rs/).
2. Clone this repository or download the project files.
3. Navigate to the project directory:
   ```
   cd flappy_bird_rust
   ```
4. Build the project:
   ```
   cargo build
   ```
5. Run the project:
   ```
   cargo run
   ```

## Gameplay

In this game, you control a bird that must navigate through a series of pipes. The objective is to score points by passing through the gaps in the pipes without colliding with them. The game features simple controls for jumping and gravity mechanics to simulate the bird's movement.

## Dependencies

This project uses the Bevy game engine. Make sure to check the `Cargo.toml` file for the specific version and additional dependencies required for the project.