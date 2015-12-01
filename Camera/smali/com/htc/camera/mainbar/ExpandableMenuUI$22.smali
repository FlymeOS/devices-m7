.class Lcom/htc/camera/mainbar/ExpandableMenuUI$22;
.super Ljava/lang/Object;
.source "ExpandableMenuUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/mainbar/ExpandableMenuUI;)V
    .locals 0

    .prologue
    .line 975
    iput-object p1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$22;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 979
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$22;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    # invokes: Lcom/htc/camera/mainbar/ExpandableMenuUI;->updateSceneIcon()V
    invoke-static {v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$3600(Lcom/htc/camera/mainbar/ExpandableMenuUI;)V

    .line 980
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$22;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    # getter for: Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuNSceneIconDrawable:Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;
    invoke-static {v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$4100(Lcom/htc/camera/mainbar/ExpandableMenuUI;)Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$22;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    # invokes: Lcom/htc/camera/mainbar/ExpandableMenuUI;->shouldSceneIconVisible()Z
    invoke-static {v1}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$4000(Lcom/htc/camera/mainbar/ExpandableMenuUI;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->setSceneIconVisibile(Z)V

    .line 981
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$22;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    # getter for: Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuButton:Lcom/htc/lib1/cc/widget/HtcIconButton;
    invoke-static {v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$3400(Lcom/htc/camera/mainbar/ExpandableMenuUI;)Lcom/htc/lib1/cc/widget/HtcIconButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcIconButton;->invalidate()V

    .line 982
    return-void
.end method
