// by buruaru
function onNoteHit(event) {
    if (event.note.isSustainNote) {
        event.animCancelled = true;
        
        for (char in event.characters) {
            if (char != null) {
                char.lastHit = Conductor.songPosition;
            }
        }
    }
}