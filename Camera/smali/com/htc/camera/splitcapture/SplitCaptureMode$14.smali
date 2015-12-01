.class Lcom/htc/camera/splitcapture/SplitCaptureMode$14;
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
    .line 657
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode$14;->this$0:Lcom/htc/camera/splitcapture/SplitCaptureMode;

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
    .line 661
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode$14;->this$0:Lcom/htc/camera/splitcapture/SplitCaptureMode;

    # invokes: Lcom/htc/camera/splitcapture/SplitCaptureMode;->updateSyncAsyncButtonEnabled()V
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->access$700(Lcom/htc/camera/splitcapture/SplitCaptureMode;)V

    .line 664
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode$14;->this$0:Lcom/htc/camera/splitcapture/SplitCaptureMode;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_ShownSplitCaptureInstruction:Z
    invoke-static {v0, v1}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->access$1302(Lcom/htc/camera/splitcapture/SplitCaptureMode;Z)Z

    .line 665
    return-void
.end method
