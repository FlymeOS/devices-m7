.class Lcom/htc/camera/component/QuickTipsUI$17;
.super Ljava/lang/Object;
.source "QuickTipsUI.java"

# interfaces
.implements Lcom/htc/lib1/cc/widget/quicktips/a;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/QuickTipsUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/QuickTipsUI;)V
    .locals 0

    .prologue
    .line 743
    iput-object p1, p0, Lcom/htc/camera/component/QuickTipsUI$17;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 747
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$17;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    # invokes: Lcom/htc/camera/component/QuickTipsUI;->showOneCamQuickTips(ZZ)V
    invoke-static {v0, v1, v2}, Lcom/htc/camera/component/QuickTipsUI;->access$100(Lcom/htc/camera/component/QuickTipsUI;ZZ)V

    .line 748
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$17;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    # getter for: Lcom/htc/camera/component/QuickTipsUI;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;
    invoke-static {v0}, Lcom/htc/camera/component/QuickTipsUI;->access$200(Lcom/htc/camera/component/QuickTipsUI;)Lcom/htc/camera/zoe/IZoeController;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/zoe/IZoeController;->isRecordingMode:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$17;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    # invokes: Lcom/htc/camera/component/QuickTipsUI;->showCameraQuickTips(ZZ)V
    invoke-static {v0, v2, v1}, Lcom/htc/camera/component/QuickTipsUI;->access$000(Lcom/htc/camera/component/QuickTipsUI;ZZ)V

    .line 750
    :cond_0
    return-void
.end method
