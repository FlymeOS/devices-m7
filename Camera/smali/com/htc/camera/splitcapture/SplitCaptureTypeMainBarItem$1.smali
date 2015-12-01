.class Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem$1;
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
        "Lcom/htc/camera/splitcapture/SplitCaptureType;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem$1;->this$0:Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;

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
            "Lcom/htc/camera/splitcapture/SplitCaptureType;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/splitcapture/SplitCaptureType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem$1;->this$0:Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;

    # invokes: Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;->updateIconMenuItemSelection()V
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;->access$000(Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;)V

    .line 41
    return-void
.end method
