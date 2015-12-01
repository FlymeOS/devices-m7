.class final Lcom/htc/camera/component/CaptureBar$RecordingTimerHandle;
.super Lcom/htc/camera/Handle;
.source "CaptureBar.java"


# instance fields
.field public final flags:I

.field public isHighlighted:Z

.field public text:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;I)V
    .locals 1

    .prologue
    .line 262
    const-string v0, "RecordingTimer"

    invoke-direct {p0, v0}, Lcom/htc/camera/Handle;-><init>(Ljava/lang/String;)V

    .line 263
    iput-object p1, p0, Lcom/htc/camera/component/CaptureBar$RecordingTimerHandle;->text:Ljava/lang/CharSequence;

    .line 264
    iput p2, p0, Lcom/htc/camera/component/CaptureBar$RecordingTimerHandle;->flags:I

    .line 265
    return-void
.end method
