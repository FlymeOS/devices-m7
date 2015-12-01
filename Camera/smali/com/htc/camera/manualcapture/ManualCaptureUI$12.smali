.class Lcom/htc/camera/manualcapture/ManualCaptureUI$12;
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
    .line 1298
    iput-object p1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI$12;->this$0:Lcom/htc/camera/manualcapture/ManualCaptureUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;I)V
    .locals 1

    .prologue
    .line 1307
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI$12;->this$0:Lcom/htc/camera/manualcapture/ManualCaptureUI;

    # invokes: Lcom/htc/camera/manualcapture/ManualCaptureUI;->onExposureProgressChanged(Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;I)V
    invoke-static {v0, p1, p2}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->access$2500(Lcom/htc/camera/manualcapture/ManualCaptureUI;Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;I)V

    .line 1308
    return-void
.end method

.method public onStartTrackingTouch(Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;)V
    .locals 0

    .prologue
    .line 1303
    return-void
.end method

.method public onStopTrackingTouch(Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;)V
    .locals 0

    .prologue
    .line 1301
    return-void
.end method
