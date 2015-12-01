.class Lcom/htc/camera/bi/SplitVideoStatisticController$1;
.super Ljava/lang/Object;
.source "SplitVideoStatisticController.java"

# interfaces
.implements Lcom/htc/camera/base/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/base/b",
        "<",
        "Lcom/htc/camera/splitcapture/SplitCaptureEventArgs",
        "<[",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/bi/SplitVideoStatisticController;


# direct methods
.method constructor <init>(Lcom/htc/camera/bi/SplitVideoStatisticController;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/htc/camera/bi/SplitVideoStatisticController$1;->this$0:Lcom/htc/camera/bi/SplitVideoStatisticController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 0

    .prologue
    .line 52
    check-cast p3, Lcom/htc/camera/splitcapture/SplitCaptureEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/bi/SplitVideoStatisticController$1;->onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/splitcapture/SplitCaptureEventArgs;)V

    return-void
.end method

.method public onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/splitcapture/SplitCaptureEventArgs;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/splitcapture/SplitCaptureEventArgs",
            "<[",
            "Ljava/lang/Integer;",
            ">;>;",
            "Lcom/htc/camera/splitcapture/SplitCaptureEventArgs",
            "<[",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 59
    iget-object v0, p3, Lcom/htc/camera/splitcapture/SplitCaptureEventArgs;->biRecord:[Ljava/lang/Integer;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 60
    iget-object v0, p3, Lcom/htc/camera/splitcapture/SplitCaptureEventArgs;->biRecord:[Ljava/lang/Integer;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    const/4 v0, -0x1

    move v1, v0

    .line 61
    :goto_0
    rem-int/lit8 v0, v2, 0x2

    if-ne v0, v3, :cond_1

    .line 62
    iget-object v0, p0, Lcom/htc/camera/bi/SplitVideoStatisticController$1;->this$0:Lcom/htc/camera/bi/SplitVideoStatisticController;

    # getter for: Lcom/htc/camera/bi/SplitVideoStatisticController;->mSwipeHistory:[Ljava/lang/Integer;
    invoke-static {v0}, Lcom/htc/camera/bi/SplitVideoStatisticController;->access$000(Lcom/htc/camera/bi/SplitVideoStatisticController;)[Ljava/lang/Integer;

    move-result-object v0

    aget-object v2, v0, v4

    aget-object v2, v0, v4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v4

    .line 66
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/bi/SplitVideoStatisticController$1;->this$0:Lcom/htc/camera/bi/SplitVideoStatisticController;

    # getter for: Lcom/htc/camera/bi/SplitVideoStatisticController;->mRetakeHistoryTable:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/htc/camera/bi/SplitVideoStatisticController;->access$100(Lcom/htc/camera/bi/SplitVideoStatisticController;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    iget-object v0, p0, Lcom/htc/camera/bi/SplitVideoStatisticController$1;->this$0:Lcom/htc/camera/bi/SplitVideoStatisticController;

    # getter for: Lcom/htc/camera/bi/SplitVideoStatisticController;->mRetakeHistoryTable:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/htc/camera/bi/SplitVideoStatisticController;->access$100(Lcom/htc/camera/bi/SplitVideoStatisticController;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 69
    iget-object v2, p0, Lcom/htc/camera/bi/SplitVideoStatisticController$1;->this$0:Lcom/htc/camera/bi/SplitVideoStatisticController;

    # getter for: Lcom/htc/camera/bi/SplitVideoStatisticController;->mRetakeHistoryTable:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/htc/camera/bi/SplitVideoStatisticController;->access$100(Lcom/htc/camera/bi/SplitVideoStatisticController;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :goto_2
    iget-object v0, p0, Lcom/htc/camera/bi/SplitVideoStatisticController$1;->this$0:Lcom/htc/camera/bi/SplitVideoStatisticController;

    # setter for: Lcom/htc/camera/bi/SplitVideoStatisticController;->mHasChanged:Z
    invoke-static {v0, v3}, Lcom/htc/camera/bi/SplitVideoStatisticController;->access$202(Lcom/htc/camera/bi/SplitVideoStatisticController;Z)Z

    .line 75
    return-void

    .line 60
    :cond_0
    iget-object v0, p3, Lcom/htc/camera/splitcapture/SplitCaptureEventArgs;->biRecord:[Ljava/lang/Integer;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v1, v0

    goto :goto_0

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/bi/SplitVideoStatisticController$1;->this$0:Lcom/htc/camera/bi/SplitVideoStatisticController;

    # getter for: Lcom/htc/camera/bi/SplitVideoStatisticController;->mSwipeHistory:[Ljava/lang/Integer;
    invoke-static {v0}, Lcom/htc/camera/bi/SplitVideoStatisticController;->access$000(Lcom/htc/camera/bi/SplitVideoStatisticController;)[Ljava/lang/Integer;

    move-result-object v0

    aget-object v2, v0, v3

    aget-object v2, v0, v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    goto :goto_1

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/bi/SplitVideoStatisticController$1;->this$0:Lcom/htc/camera/bi/SplitVideoStatisticController;

    # getter for: Lcom/htc/camera/bi/SplitVideoStatisticController;->mRetakeHistoryTable:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/htc/camera/bi/SplitVideoStatisticController;->access$100(Lcom/htc/camera/bi/SplitVideoStatisticController;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method
