.class Lcom/htc/camera/component/CaptureBar$CaptureBarVisibilityHandle;
.super Lcom/htc/camera/Handle;
.source "CaptureBar.java"


# instance fields
.field public final flags:I

.field private final visible:Z


# direct methods
.method public constructor <init>(ZI)V
    .locals 1

    .prologue
    .line 173
    const-string v0, "CaptureBarVisibility"

    invoke-direct {p0, v0}, Lcom/htc/camera/Handle;-><init>(Ljava/lang/String;)V

    .line 174
    iput-boolean p1, p0, Lcom/htc/camera/component/CaptureBar$CaptureBarVisibilityHandle;->visible:Z

    .line 175
    iput p2, p0, Lcom/htc/camera/component/CaptureBar$CaptureBarVisibilityHandle;->flags:I

    .line 176
    return-void
.end method

.method static synthetic access$400(Lcom/htc/camera/component/CaptureBar$CaptureBarVisibilityHandle;)Z
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/htc/camera/component/CaptureBar$CaptureBarVisibilityHandle;->visible:Z

    return v0
.end method
