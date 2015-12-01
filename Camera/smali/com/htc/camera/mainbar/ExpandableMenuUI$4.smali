.class Lcom/htc/camera/mainbar/ExpandableMenuUI$4;
.super Ljava/lang/Object;
.source "ExpandableMenuUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/mainbar/ExpandableMenuUI;)V
    .locals 0

    .prologue
    .line 617
    iput-object p1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$4;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 621
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$4;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    # getter for: Lcom/htc/camera/mainbar/ExpandableMenuUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$900(Lcom/htc/camera/mainbar/ExpandableMenuUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onClick() - flash clicked"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$4;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    invoke-virtual {v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->flashButtonClickedEvent:Lcom/htc/camera/event/Event;

    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$4;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    sget-object v2, Lcom/htc/camera/event/EventArgs;->empty:Lcom/htc/camera/event/EventArgs;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 623
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$4;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    # invokes: Lcom/htc/camera/mainbar/ExpandableMenuUI;->switchFlashMode()V
    invoke-static {v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$1000(Lcom/htc/camera/mainbar/ExpandableMenuUI;)V

    .line 624
    return-void
.end method
