.class Lcom/htc/camera/splitcapture/SplitVideoUI$17;
.super Ljava/lang/Object;
.source "SplitVideoUI.java"

# interfaces
.implements Lcom/htc/camera/event/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/event/a",
        "<",
        "Lcom/htc/camera/event/EventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitVideoUI;)V
    .locals 0

    .prologue
    .line 1163
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$17;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/event/EventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/event/EventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$17;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    const/4 v1, 0x1

    # setter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_IsDeleteResult:Z
    invoke-static {v0, v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$3802(Lcom/htc/camera/splitcapture/SplitVideoUI;Z)Z

    .line 1168
    return-void
.end method
