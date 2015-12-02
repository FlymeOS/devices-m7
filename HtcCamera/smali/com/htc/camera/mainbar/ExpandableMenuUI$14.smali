.class Lcom/htc/camera/mainbar/ExpandableMenuUI$14;
.super Ljava/lang/Object;
.source "ExpandableMenuUI.java"

# interfaces
.implements Lcom/htc/camera/base/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/base/b",
        "<",
        "Lcom/htc/camera/base/EventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/mainbar/ExpandableMenuUI;)V
    .locals 0

    .prologue
    .line 741
    iput-object p1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$14;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/base/EventArgs;",
            ">;",
            "Lcom/htc/camera/base/EventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 745
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$14;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    const/4 v1, 0x1

    # invokes: Lcom/htc/camera/mainbar/ExpandableMenuUI;->updateUIOpenStatus(Z)Z
    invoke-static {v0, v1}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$2200(Lcom/htc/camera/mainbar/ExpandableMenuUI;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$14;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    # getter for: Lcom/htc/camera/mainbar/ExpandableMenuUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$2400(Lcom/htc/camera/mainbar/ExpandableMenuUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onEventReceived(newIntentEvent) - current items are using default settings, so close expandable menu"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    :cond_0
    return-void
.end method
