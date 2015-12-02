.class Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem$4;
.super Ljava/lang/Object;
.source "SplitCaptureTypeMainBarItem.java"

# interfaces
.implements Lcom/htc/camera/base/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/base/f",
        "<",
        "Lcom/htc/camera/SupportState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem$4;->this$0:Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Ljava/lang/Object;Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/PropertyChangeEventArgs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Lcom/htc/camera/SupportState;",
            ">;",
            "Lcom/htc/camera/base/PropertyChangeEventArgs",
            "<",
            "Lcom/htc/camera/SupportState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem$4;->this$0:Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;

    # invokes: Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;->updateIconMenuItemSelection()V
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;->access$000(Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;)V

    .line 102
    return-void
.end method
