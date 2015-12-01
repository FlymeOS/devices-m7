.class Lcom/htc/camera/splitcapture/SplitCaptureMode$2;
.super Ljava/lang/Object;
.source "SplitCaptureMode.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Lcom/htc/camera/rotate/UIRotation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitCaptureMode;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitCaptureMode;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode$2;->this$0:Lcom/htc/camera/splitcapture/SplitCaptureMode;

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
            "Lcom/htc/camera/rotate/UIRotation;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/rotate/UIRotation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode$2;->this$0:Lcom/htc/camera/splitcapture/SplitCaptureMode;

    # getter for: Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->access$000(Lcom/htc/camera/splitcapture/SplitCaptureMode;)Lcom/htc/camera/IUIRotationManager;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/IUIRotationManager;->fakeRotation:Lcom/htc/camera/property/Property;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode$2;->this$0:Lcom/htc/camera/splitcapture/SplitCaptureMode;

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->oldValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/rotate/UIRotation;

    iget-object v1, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v1, Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v2, v0, v1}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->onUIRotationChanged(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V

    .line 126
    :cond_0
    return-void
.end method
