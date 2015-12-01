.class Lcom/htc/camera/component/AudioManager$StreamHandle;
.super Lcom/htc/camera/Handle;
.source "AudioManager.java"


# instance fields
.field public final audioFocus:Z

.field public final loopCount:I

.field public final sound:Lcom/htc/camera/component/AudioManager$SoundHandle;

.field public streamId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/htc/camera/component/AudioManager$SoundHandle;IZ)V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/htc/camera/Handle;-><init>(Ljava/lang/String;)V

    .line 108
    iput-object p2, p0, Lcom/htc/camera/component/AudioManager$StreamHandle;->sound:Lcom/htc/camera/component/AudioManager$SoundHandle;

    .line 109
    iput p3, p0, Lcom/htc/camera/component/AudioManager$StreamHandle;->loopCount:I

    .line 110
    iput-boolean p4, p0, Lcom/htc/camera/component/AudioManager$StreamHandle;->audioFocus:Z

    .line 111
    return-void
.end method
