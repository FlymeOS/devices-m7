.class public Lcom/htc/camera/MediaRecorderParamsSetupEventArgs;
.super Lcom/htc/camera/event/EventArgs;
.source "MediaRecorderParamsSetupEventArgs.java"


# instance fields
.field public final captureHandle:Lcom/htc/camera/Handle;

.field public final mediaRecorder:Landroid/media/MediaRecorder;

.field public final mediaRecorderParameters:Lcom/htc/camera/MediaRecorderParameters;


# direct methods
.method public constructor <init>(Lcom/htc/camera/Handle;Landroid/media/MediaRecorder;Lcom/htc/camera/MediaRecorderParameters;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/htc/camera/event/EventArgs;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/htc/camera/MediaRecorderParamsSetupEventArgs;->captureHandle:Lcom/htc/camera/Handle;

    .line 20
    iput-object p2, p0, Lcom/htc/camera/MediaRecorderParamsSetupEventArgs;->mediaRecorder:Landroid/media/MediaRecorder;

    .line 21
    iput-object p3, p0, Lcom/htc/camera/MediaRecorderParamsSetupEventArgs;->mediaRecorderParameters:Lcom/htc/camera/MediaRecorderParameters;

    .line 22
    return-void
.end method
