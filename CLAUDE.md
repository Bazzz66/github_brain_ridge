# CLAUDE.md — github_brain_ridge

Project: github_brain_ridge
Created: 2026-05-13

## Doel
Automatische eenrichtings-sync brain vault → GitHub via n8n schedule.
Geen webservice, geen Docker container — alleen een shell script + n8n workflow.

## Stack
- Shell script: brain-snapshot.sh (git add + commit + push indien wijzigingen)
- n8n workflow: Brain Snapshot (scheduleTrigger elke 10 min + SSH Execute)
- SSH credential in n8n: NAS Deploy Brain (id_ed25519_n8n)
- Git binary: /var/services/homes/claude_ssh/bin/git (Docker wrapper)
- Brain vault: /volume2/projects/_brain/
- GitHub remote: git@github.com:Bazzz66/brain.git

## Poort
- N/A (geen webservice)

## Bestanden
- brain-snapshot.sh — sync script, direct uitvoerbaar
- n8n-brain-workflow.json — workflow definitie voor import in n8n GUI

## Gebruik
Script handmatig testen:
  sh /volume2/projects/github_brain_ridge/brain-snapshot.sh

n8n workflow importeren: http://localhost:5678 → Workflows → Import from JSON
