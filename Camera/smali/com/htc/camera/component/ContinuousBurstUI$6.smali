.class Lcom/htc/camera/component/ContinuousBurstUI$6;
.super Lcom/htc/camera/trigger/Trigger;
.source "ContinuousBurstUI.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ContinuousBurstUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ContinuousBurstUI;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 502
    iput-object p1, p0, Lcom/htc/camera/component/ContinuousBurstUI$6;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 2

    .prologue
    .line 506
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI$6;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/component/ContinuousBurstUI;->m_CanCapture:Z
    invoke-static {v0, v1}, Lcom/htc/camera/component/ContinuousBurstUI;->access$2002(Lcom/htc/camera/component/ContinuousBurstUI;Z)Z

    .line 507
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI$6;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    const/16 v1, 0x2712

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/ContinuousBurstUI;->removeMessages(I)V

    .line 508
    return-void
.end method
