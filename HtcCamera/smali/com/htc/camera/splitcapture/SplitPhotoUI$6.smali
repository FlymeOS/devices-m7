.class Lcom/htc/camera/splitcapture/SplitPhotoUI$6;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitPhotoUI;)V
    .locals 0

    .prologue
    .line 941
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$6;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v2, 0x2729

    .line 945
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$6;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->isSplitCaptureActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 947
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$6;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    sget-object v1, Lcom/htc/camera/splitcapture/ISplitPhotoController;->PROPERTY_CAPTURE_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->FirstImageProcessing:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    if-ne v0, v1, :cond_1

    .line 965
    :cond_0
    :goto_0
    return-void

    .line 950
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$6;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    # invokes: Lcom/htc/camera/splitcapture/SplitPhotoUI;->hasMessages(I)Z
    invoke-static {v0, v2}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$2000(Lcom/htc/camera/splitcapture/SplitPhotoUI;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 953
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$6;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    # invokes: Lcom/htc/camera/splitcapture/SplitPhotoUI;->removeMessages(I)V
    invoke-static {v0, v2}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$2100(Lcom/htc/camera/splitcapture/SplitPhotoUI;I)V

    .line 954
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$6;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    # invokes: Lcom/htc/camera/splitcapture/SplitPhotoUI;->processFinalImage()V
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$2200(Lcom/htc/camera/splitcapture/SplitPhotoUI;)V

    .line 957
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$6;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    # invokes: Lcom/htc/camera/splitcapture/SplitPhotoUI;->showPreviewCover()V
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$1500(Lcom/htc/camera/splitcapture/SplitPhotoUI;)V

    .line 958
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$6;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    sget-object v1, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;->NotDraw:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;

    # invokes: Lcom/htc/camera/splitcapture/SplitPhotoUI;->setGLAnimationState(Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;)V
    invoke-static {v0, v1}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$1600(Lcom/htc/camera/splitcapture/SplitPhotoUI;Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;)V

    .line 959
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$6;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    # invokes: Lcom/htc/camera/splitcapture/SplitPhotoUI;->endNextImageProcessing()V
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$1700(Lcom/htc/camera/splitcapture/SplitPhotoUI;)V

    .line 960
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$6;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    # invokes: Lcom/htc/camera/splitcapture/SplitPhotoUI;->endTakingSplitPhoto()V
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$1800(Lcom/htc/camera/splitcapture/SplitPhotoUI;)V

    .line 963
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$6;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    # invokes: Lcom/htc/camera/splitcapture/SplitPhotoUI;->hideProcessingDialog()V
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$2300(Lcom/htc/camera/splitcapture/SplitPhotoUI;)V

    goto :goto_0
.end method
