.class Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem$2;
.super Ljava/lang/Object;
.source "SplitCaptureTypeMainBarItem.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Lcom/htc/camera/capturemode/CaptureMode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem$2;->this$0:Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;

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
            "Lcom/htc/camera/capturemode/CaptureMode;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/capturemode/CaptureMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem$2;->this$0:Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;

    # invokes: Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;->linkToCaptureMode()V
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;->access$100(Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;)V

    .line 83
    return-void
.end method
