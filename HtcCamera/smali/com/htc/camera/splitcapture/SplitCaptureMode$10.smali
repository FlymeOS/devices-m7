.class Lcom/htc/camera/splitcapture/SplitCaptureMode$10;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitCaptureMode;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitCaptureMode;)V
    .locals 0

    .prologue
    .line 620
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode$10;->this$0:Lcom/htc/camera/splitcapture/SplitCaptureMode;

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
    .line 624
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode$10;->this$0:Lcom/htc/camera/splitcapture/SplitCaptureMode;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode$10;->this$0:Lcom/htc/camera/splitcapture/SplitCaptureMode;

    # getter for: Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_PreviewCoverHandleRef:Lcom/htc/camera/CloseableHandleReference;
    invoke-static {v1}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->access$1000(Lcom/htc/camera/splitcapture/SplitCaptureMode;)Lcom/htc/camera/CloseableHandleReference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/CloseableHandleReference;->closeHandle()Lcom/htc/camera/CloseableHandleReference;

    move-result-object v1

    # setter for: Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_PreviewCoverHandleRef:Lcom/htc/camera/CloseableHandleReference;
    invoke-static {v0, v1}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->access$1002(Lcom/htc/camera/splitcapture/SplitCaptureMode;Lcom/htc/camera/CloseableHandleReference;)Lcom/htc/camera/CloseableHandleReference;

    .line 626
    :cond_0
    return-void
.end method
