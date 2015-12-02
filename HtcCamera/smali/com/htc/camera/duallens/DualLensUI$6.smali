.class Lcom/htc/camera/duallens/DualLensUI$6;
.super Ljava/lang/Object;
.source "DualLensUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/duallens/DualLensUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/duallens/DualLensUI;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/htc/camera/duallens/DualLensUI$6;->this$0:Lcom/htc/camera/duallens/DualLensUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 237
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensUI$6;->this$0:Lcom/htc/camera/duallens/DualLensUI;

    # getter for: Lcom/htc/camera/duallens/DualLensUI;->m_IsShowingDualLensUI:Z
    invoke-static {v0}, Lcom/htc/camera/duallens/DualLensUI;->access$1100(Lcom/htc/camera/duallens/DualLensUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensUI$6;->this$0:Lcom/htc/camera/duallens/DualLensUI;

    # getter for: Lcom/htc/camera/duallens/DualLensUI;->m_LensBlockToastContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;
    invoke-static {v0}, Lcom/htc/camera/duallens/DualLensUI;->access$1300(Lcom/htc/camera/duallens/DualLensUI;)Lcom/htc/camera/rotate/RotateRelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/duallens/DualLensUI$6;->this$0:Lcom/htc/camera/duallens/DualLensUI;

    # invokes: Lcom/htc/camera/duallens/DualLensUI;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;
    invoke-static {v1}, Lcom/htc/camera/duallens/DualLensUI;->access$1200(Lcom/htc/camera/duallens/DualLensUI;)Lcom/htc/camera/rotate/UIRotation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/htc/camera/rotate/UIRotation;)V

    .line 240
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensUI$6;->this$0:Lcom/htc/camera/duallens/DualLensUI;

    iget-object v1, p0, Lcom/htc/camera/duallens/DualLensUI$6;->this$0:Lcom/htc/camera/duallens/DualLensUI;

    # getter for: Lcom/htc/camera/duallens/DualLensUI;->m_LensBlockToastContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;
    invoke-static {v1}, Lcom/htc/camera/duallens/DualLensUI;->access$1300(Lcom/htc/camera/duallens/DualLensUI;)Lcom/htc/camera/rotate/RotateRelativeLayout;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    # invokes: Lcom/htc/camera/duallens/DualLensUI;->showUI(Landroid/view/View;ZZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/duallens/DualLensUI;->access$1400(Lcom/htc/camera/duallens/DualLensUI;Landroid/view/View;ZZ)V

    .line 242
    :cond_0
    return-void
.end method
