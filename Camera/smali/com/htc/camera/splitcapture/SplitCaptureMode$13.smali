.class Lcom/htc/camera/splitcapture/SplitCaptureMode$13;
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
        "Lcom/htc/camera/TakingPictureState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitCaptureMode;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitCaptureMode;)V
    .locals 0

    .prologue
    .line 649
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode$13;->this$0:Lcom/htc/camera/splitcapture/SplitCaptureMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/TakingPictureState;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/TakingPictureState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 653
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode$13;->this$0:Lcom/htc/camera/splitcapture/SplitCaptureMode;

    # invokes: Lcom/htc/camera/splitcapture/SplitCaptureMode;->updateSyncAsyncButtonEnabled()V
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->access$700(Lcom/htc/camera/splitcapture/SplitCaptureMode;)V

    .line 654
    return-void
.end method
