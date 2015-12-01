.class Lcom/htc/camera/splitcapture/SplitPhotoUI$10;
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
    .line 1010
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$10;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

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
    .line 1014
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$10;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

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

    if-eqz v0, :cond_0

    .line 1016
    sget-object v1, Lcom/htc/camera/splitcapture/SplitPhotoUI$22;->$SwitchMap$com$htc$camera$splitcapture$ISplitPhotoController$SplitPhotoState:[I

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$10;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    sget-object v2, Lcom/htc/camera/splitcapture/ISplitPhotoController;->PROPERTY_CAPTURE_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    sparse-switch v0, :sswitch_data_0

    .line 1025
    :cond_0
    :goto_0
    return-void

    .line 1020
    :sswitch_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$10;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitPhotoUI;->nextCameraType:Lcom/htc/camera/property/Property;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$2800(Lcom/htc/camera/splitcapture/SplitPhotoUI;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$10;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    # invokes: Lcom/htc/camera/splitcapture/SplitPhotoUI;->getCameraType()Lcom/htc/camera/CameraType;
    invoke-static {v1}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$2900(Lcom/htc/camera/splitcapture/SplitPhotoUI;)Lcom/htc/camera/CameraType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1021
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$10;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    # invokes: Lcom/htc/camera/splitcapture/SplitPhotoUI;->hidePreviewCover()V
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$3000(Lcom/htc/camera/splitcapture/SplitPhotoUI;)V

    goto :goto_0

    .line 1016
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch
.end method
