.class Lcom/htc/camera/component/QuickTipsUI$22;
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
    .line 1067
    iput-object p1, p0, Lcom/htc/camera/component/QuickTipsUI$22;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1071
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$22;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    # invokes: Lcom/htc/camera/component/QuickTipsUI;->showSettingsAutoSelfieQuickTips(ZZ)V
    invoke-static {v0, v2, v1}, Lcom/htc/camera/component/QuickTipsUI;->access$1400(Lcom/htc/camera/component/QuickTipsUI;ZZ)V

    .line 1072
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$22;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    # setter for: Lcom/htc/camera/component/QuickTipsUI;->m_IsSettingsAutoSelfieTipsEverShown:Z
    invoke-static {v0, v1}, Lcom/htc/camera/component/QuickTipsUI;->access$2602(Lcom/htc/camera/component/QuickTipsUI;Z)Z

    .line 1073
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$22;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    # invokes: Lcom/htc/camera/component/QuickTipsUI;->showCameraQuickTips(ZZ)V
    invoke-static {v0, v1, v2}, Lcom/htc/camera/component/QuickTipsUI;->access$000(Lcom/htc/camera/component/QuickTipsUI;ZZ)V

    .line 1074
    return-void
.end method
