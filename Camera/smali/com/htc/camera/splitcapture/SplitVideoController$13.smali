.class Lcom/htc/camera/splitcapture/SplitVideoController$13;
.super Ljava/lang/Object;
.source "SplitVideoController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

.field final synthetic val$isRenameNeeded:Z


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitVideoController;Z)V
    .locals 0

    .prologue
    .line 1797
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoController$13;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    iput-boolean p2, p0, Lcom/htc/camera/splitcapture/SplitVideoController$13;->val$isRenameNeeded:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1801
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$13;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    new-instance v1, Lcom/htc/camera/splitcapture/SplitVideoController$13$1;

    invoke-direct {v1, p0}, Lcom/htc/camera/splitcapture/SplitVideoController$13$1;-><init>(Lcom/htc/camera/splitcapture/SplitVideoController$13;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/splitcapture/SplitVideoController;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 1841
    return-void
.end method
