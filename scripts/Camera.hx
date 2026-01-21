// by buruaru

public var moveAmt:Float = 30.0;

var currentOffsetX:Float = 0;
var currentOffsetY:Float = 0;

function update(elapsed:Float) {
    var targetX:Float = 0;
    var targetY:Float = 0;

    if (strumLines.members[curCameraTarget] != null && strumLines.members[curCameraTarget].characters[0] != null) {
        var char = strumLines.members[curCameraTarget].characters[0];
        
        switch(char.getAnimName()) {
            case "singLEFT", "singLEFT-alt":
                targetX = -moveAmt;
            case "singDOWN", "singDOWN-alt":
                targetY = moveAmt;
            case "singUP", "singUP-alt":
                targetY = -moveAmt;
            case "singRIGHT", "singRIGHT-alt":
                targetX = moveAmt;
            default:
                targetX = 0;
                targetY = 0;
        }
    }

    currentOffsetX = FlxMath.lerp(currentOffsetX, targetX, 1.3);
    currentOffsetY = FlxMath.lerp(currentOffsetY, targetY, 1.3);

    FlxG.camera.targetOffset.x = currentOffsetX;
    FlxG.camera.targetOffset.y = currentOffsetY;
}

