.class Lcom/htc/camera/splitcapture/SplitPhotoUI$16;
.super Ljava/lang/Object;
.source "SplitPhotoUI.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Lcom/htc/camera/UIState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitPhotoUI;)V
    .locals 0

    .prologue
    .line 1449
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$16;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/UIState;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/UIState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1454
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$16;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->isSplitCaptureActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1456
    sget-object v1, Lcom/htc/camera/splitcapture/SplitPhotoUI$22;->$SwitchMap$com$htc$camera$UIState:[I

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/UIState;

    invoke-virtual {v0}, Lcom/htc/camera/UIState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1472
    :cond_0
    :goto_0
    return-void

    .line 1459
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$16;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    # invokes: Lcom/htc/camera/splitcapture/SplitPhotoUI;->unlockRotation()V
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$3500(Lcom/htc/camera/splitcapture/SplitPhotoUI;)V

    .line 1460
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$16;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    # invokes: Lcom/htc/camera/splitcapture/SplitPhotoUI;->unlockSlidingCameraUI()V
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$3600(Lcom/htc/camera/splitcapture/SplitPhotoUI;)V

    goto :goto_0

    .line 1464
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$16;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_SplitPanelInfos:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$3700(Lcom/htc/camera/splitcapture/SplitPhotoUI;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1466
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$16;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    # invokes: Lcom/htc/camera/splitcapture/SplitPhotoUI;->lockRotation()V
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$3800(Lcom/htc/camera/splitcapture/SplitPhotoUI;)V

    .line 1467
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$16;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    # invokes: Lcom/htc/camera/splitcapture/SplitPhotoUI;->lockSlidingCameraUI()V
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$3900(Lcom/htc/camera/splitcapture/SplitPhotoUI;)V

    goto :goto_0

    .line 1456
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
