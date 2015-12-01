.class Lcom/htc/camera/component/QuickTipsUI$16;
.super Lcom/htc/camera/trigger/Trigger;
.source "QuickTipsUI.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/QuickTipsUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/QuickTipsUI;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 487
    iput-object p1, p0, Lcom/htc/camera/component/QuickTipsUI$16;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 3

    .prologue
    .line 491
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$16;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    const/4 v1, 0x1

    const/4 v2, 0x0

    # invokes: Lcom/htc/camera/component/QuickTipsUI;->showCameraQuickTips(ZZ)V
    invoke-static {v0, v1, v2}, Lcom/htc/camera/component/QuickTipsUI;->access$000(Lcom/htc/camera/component/QuickTipsUI;ZZ)V

    .line 492
    return-void
.end method
