#!/bin/bash

# Function to change color
color() {
  tput setaf $1
}

# Reset color
reset_color() {
  tput sgr0
}

echo "🔬 Quantum Entanglement Experiment with Probabilistic Regeneration!"
sleep 1

# User interaction
echo -e "\n🌌 Choose the level of quantum measurement uncertainty:"
echo -e "  [1] Deterministic measurement (few changes)"
echo -e "  [2] Unstable measurement (more noticeable fluctuations)"
echo -e "  [3] Chaotic measurement (drastic collapse!)"
read -p "Enter the corresponding number: " prob

echo -e "\n🧪 Preparing entangled particles..."
sleep 2

# Creating the entangled state
particle1=$((RANDOM % 2))
particle2=$((1 - particle1))  # Opposite state, like perfect entanglement

color 5
echo -e "\n📡 Entangled particles created:\n"
echo -e " |Ψ⟩ = ( |0⟩|1⟩ + |1⟩|0⟩ ) / √2 "
reset_color
sleep 2

echo -e "\n🧐 Wavefunction evolution...\n"
sleep 2

# Oscillating text effect
echo -e "\n🌊 Wavefunction fluctuations:"
for i in {1..10}; do
  wave=("~" "_" "¯" "~" "_")
  distortion=$(echo "Ψ = α|0⟩ + β|1⟩" | sed "s/./${wave[RANDOM % ${#wave[@]}]}/g")
  
  color $((RANDOM % 7 + 1))
  echo -ne "  $distortion   \r"
  
  sleep 0.2
done
reset_color

sleep 1
echo -e "\n⚡ Wavefunction collapse!"

# Quantum glitch
echo -e "\n🌀 Quantum distortion!"
for i in {1..7}; do
  color $((RANDOM % 7 + 1))
  
  glitch=$(echo "Ψ = α|0⟩ + β|1⟩" | sed "s/./$(echo -ne "\e[5m")${wave[RANDOM % ${#wave[@]}]}\e[25m/g")
  
  echo -ne "  ⚡ $glitch ⚡  \r"
  
  # Chaotic sound effect
  freq=$((200 + RANDOM % 1000))
  powershell.exe -c "[console]::beep($freq,100)"
  
  sleep 0.2
done
reset_color

sleep 2

# Progressive decoherence effect
echo -e "\n💨 The wavefunction is dissolving...\n"
for i in {1..5}; do
  fade_text=$(echo "Ψ = α|0⟩ + β|1⟩" | sed "s/./ /g")
  
  color $((RANDOM % 7 + 1))
  echo -ne "  $fade_text   \r"
  
  # Final dissolution sound
  freq=$((800 - i * 100))
  powershell.exe -c "[console]::beep($freq,150)"
  
  sleep 0.5
done

echo -e "\n🌀 Complete decoherence! The system is now classical.\n"
sleep 2

# Probability of regeneration
regeneration_chance=$((RANDOM % 100))

if [[ $regeneration_chance -gt 50 ]]; then
  echo -e "\n⚛️ But something is happening... The quantum state is REGENERATING!\n"
  sleep 2

  echo -e "\n🌟 Wavefunction reconstruction:"
  for i in {1..5}; do
    regen_text=$(echo "Ψ = α|0⟩ + β|1⟩" | sed "s/./${wave[RANDOM % ${#wave[@]}]}/g")
    
    color $((RANDOM % 7 + 1))
    echo -ne "  ✨ $regen_text ✨  \r"
    
    # Rising sound for quantum rebirth
    freq=$((300 + i * 200))
    powershell.exe -c "[console]::beep($freq,150)"
    
    sleep 0.5
  done
  reset_color

  echo -e "\n🚀 The system has returned to the quantum state!\n"
else
  echo -e "\n⏳ Regeneration did not occur. The system remains classical."
fi

echo -e "\n🎭 Measurement results:"
color 2
echo -e "  🧪 Particle A: |$particle1⟩"
echo -e "  🧪 Particle B: |$particle2⟩  (perfectly correlated!)"
reset_color
sleep 1

color 6
echo -e "\n⚛️ The mystery of quantum physics continues! 🚀"
reset_color
