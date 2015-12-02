.class Lcom/htc/camera/mainbar/ExpandableMenuUI$17;
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
    .line 800
    iput-object p1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$17;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 3
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
    const/4 v2, 0x0

    .line 805
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$17;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    # getter for: Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuButton:Lcom/htc/lib1/cc/widget/HtcIconButton;
    invoke-static {v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$3400(Lcom/htc/camera/mainbar/ExpandableMenuUI;)Lcom/htc/lib1/cc/widget/HtcIconButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setColorOn(Z)V

    .line 806
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$17;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$17;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    # getter for: Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_ExpandableMenu:Lcom/htc/camera/widget/ExpandableMenu;
    invoke-static {v1}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$1400(Lcom/htc/camera/mainbar/ExpandableMenuUI;)Lcom/htc/camera/widget/ExpandableMenu;

    move-result-object v1

    # invokes: Lcom/htc/camera/mainbar/ExpandableMenuUI;->showUI(Landroid/view/View;ZZ)V
    invoke-static {v0, v1, v2, v2}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$3500(Lcom/htc/camera/mainbar/ExpandableMenuUI;Landroid/view/View;ZZ)V

    .line 807
    return-void
.end method
