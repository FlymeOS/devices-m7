.class Lcom/htc/camera/manualcapture/ManualCaptureUI$3;
.super Ljava/lang/Object;
.source "ManualCaptureUI.java"

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
.field final synthetic this$0:Lcom/htc/camera/manualcapture/ManualCaptureUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/manualcapture/ManualCaptureUI;)V
    .locals 0

    .prologue
    .line 638
    iput-object p1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI$3;->this$0:Lcom/htc/camera/manualcapture/ManualCaptureUI;

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
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 642
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI$3;->this$0:Lcom/htc/camera/manualcapture/ManualCaptureUI;

    sget-object v1, Lcom/htc/camera/manualcapture/IManualCaptureController;->PROPERTY_IS_MANUAL_CAPTURE_ENABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

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

    .line 644
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI$3;->this$0:Lcom/htc/camera/manualcapture/ManualCaptureUI;

    # invokes: Lcom/htc/camera/manualcapture/ManualCaptureUI;->showControls()V
    invoke-static {v0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->access$100(Lcom/htc/camera/manualcapture/ManualCaptureUI;)V

    .line 646
    :cond_0
    return-void
.end method
