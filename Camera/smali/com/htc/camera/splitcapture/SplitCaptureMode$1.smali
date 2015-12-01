.class Lcom/htc/camera/splitcapture/SplitCaptureMode$1;
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
    .line 95
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode$1;->this$0:Lcom/htc/camera/splitcapture/SplitCaptureMode;

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
    .line 99
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 101
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->oldValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/rotate/UIRotation;

    .line 102
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode$1;->this$0:Lcom/htc/camera/splitcapture/SplitCaptureMode;

    # getter for: Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;
    invoke-static {v1}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->access$000(Lcom/htc/camera/splitcapture/SplitCaptureMode;)Lcom/htc/camera/IUIRotationManager;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/camera/IUIRotationManager;->rotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/rotate/UIRotation;

    .line 105
    if-eq v0, v1, :cond_0

    .line 106
    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode$1;->this$0:Lcom/htc/camera/splitcapture/SplitCaptureMode;

    invoke-virtual {v2, v0, v1}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->onUIRotationChanged(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/rotate/UIRotation;

    .line 111
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode$1;->this$0:Lcom/htc/camera/splitcapture/SplitCaptureMode;

    # getter for: Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;
    invoke-static {v1}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->access$000(Lcom/htc/camera/splitcapture/SplitCaptureMode;)Lcom/htc/camera/IUIRotationManager;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/camera/IUIRotationManager;->rotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/rotate/UIRotation;

    .line 114
    if-eq v0, v1, :cond_0

    .line 115
    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode$1;->this$0:Lcom/htc/camera/splitcapture/SplitCaptureMode;

    invoke-virtual {v2, v1, v0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->onUIRotationChanged(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V

    goto :goto_0
.end method
