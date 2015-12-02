.class Lcom/htc/camera/manualcapture/ManualCaptureUI$10;
.super Ljava/lang/Object;
.source "ManualCaptureUI.java"

# interfaces
.implements Lcom/htc/camera/manualcapture/e;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/manualcapture/ManualCaptureUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/manualcapture/ManualCaptureUI;)V
    .locals 0

    .prologue
    .line 1272
    iput-object p1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI$10;->this$0:Lcom/htc/camera/manualcapture/ManualCaptureUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;I)V
    .locals 1

    .prologue
    .line 1281
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI$10;->this$0:Lcom/htc/camera/manualcapture/ManualCaptureUI;

    # invokes: Lcom/htc/camera/manualcapture/ManualCaptureUI;->onShutterProgressChanged(Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;I)V
    invoke-static {v0, p1, p2}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->access$2300(Lcom/htc/camera/manualcapture/ManualCaptureUI;Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;I)V

    .line 1282
    return-void
.end method

.method public onStartTrackingTouch(Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;)V
    .locals 0

    .prologue
    .line 1277
    return-void
.end method

.method public onStopTrackingTouch(Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;)V
    .locals 0

    .prologue
    .line 1275
    return-void
.end method
