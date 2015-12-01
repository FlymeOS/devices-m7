.class Lcom/htc/camera/component/AudioManager$SoundHandle;
.super Lcom/htc/camera/Handle;
.source "AudioManager.java"


# instance fields
.field public isLoaded:Z

.field public final pendingStreams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/component/AudioManager$StreamHandle;",
            ">;"
        }
    .end annotation
.end field

.field public final resourceId:I

.field public soundId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/htc/camera/Handle;-><init>(Ljava/lang/String;)V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/AudioManager$SoundHandle;->pendingStreams:Ljava/util/ArrayList;

    .line 88
    iput p2, p0, Lcom/htc/camera/component/AudioManager$SoundHandle;->resourceId:I

    .line 89
    iput p3, p0, Lcom/htc/camera/component/AudioManager$SoundHandle;->soundId:I

    .line 90
    return-void
.end method
