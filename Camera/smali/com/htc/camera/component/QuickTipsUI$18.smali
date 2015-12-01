.class Lcom/htc/camera/component/QuickTipsUI$18;
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
    .line 789
    iput-object p1, p0, Lcom/htc/camera/component/QuickTipsUI$18;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 793
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$18;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    const/4 v1, 0x0

    # invokes: Lcom/htc/camera/component/QuickTipsUI;->showStopRecordingQuickTips(ZZ)V
    invoke-static {v0, v1, v2}, Lcom/htc/camera/component/QuickTipsUI;->access$500(Lcom/htc/camera/component/QuickTipsUI;ZZ)V

    .line 794
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$18;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    # setter for: Lcom/htc/camera/component/QuickTipsUI;->m_IsOneCamStopRecordingEvenShown:Z
    invoke-static {v0, v2}, Lcom/htc/camera/component/QuickTipsUI;->access$402(Lcom/htc/camera/component/QuickTipsUI;Z)Z

    .line 795
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$18;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    const-string v1, "com.htc.camera.onecamera.stoprecording"

    # invokes: Lcom/htc/camera/component/QuickTipsUI;->disableQuickTips(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/camera/component/QuickTipsUI;->access$3000(Lcom/htc/camera/component/QuickTipsUI;Ljava/lang/String;)V

    .line 796
    return-void
.end method
