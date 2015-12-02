.class Lcom/htc/camera/effect/EffectPanelUI$16;
.super Ljava/lang/Object;
.source "EffectPanelUI.java"

# interfaces
.implements Lcom/htc/camera/widget/j;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/effect/EffectPanelUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/effect/EffectPanelUI;)V
    .locals 0

    .prologue
    .line 498
    iput-object p1, p0, Lcom/htc/camera/effect/EffectPanelUI$16;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOutsideTouch(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 2

    .prologue
    .line 502
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI$16;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    const/16 v1, 0x2711

    # invokes: Lcom/htc/camera/effect/EffectPanelUI;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/htc/camera/effect/EffectPanelUI;->access$2200(Lcom/htc/camera/effect/EffectPanelUI;I)V

    .line 503
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI$16;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    invoke-virtual {v0}, Lcom/htc/camera/effect/EffectPanelUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->popupOutsideTouchEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/input/MotionEventArgs;

    invoke-direct {v1, p2}, Lcom/htc/camera/input/MotionEventArgs;-><init>(Landroid/view/MotionEvent;)V

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 504
    return-void
.end method
