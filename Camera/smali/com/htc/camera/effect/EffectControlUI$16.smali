.class Lcom/htc/camera/effect/EffectControlUI$16;
.super Ljava/lang/Object;
.source "EffectControlUI.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/effect/EffectControlUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/effect/EffectControlUI;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lcom/htc/camera/effect/EffectControlUI$16;->this$0:Lcom/htc/camera/effect/EffectControlUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI$16;->this$0:Lcom/htc/camera/effect/EffectControlUI;

    # invokes: Lcom/htc/camera/effect/EffectControlUI;->onControlBarProgressChanged(I)V
    invoke-static {v0, p2}, Lcom/htc/camera/effect/EffectControlUI;->access$1300(Lcom/htc/camera/effect/EffectControlUI;I)V

    .line 397
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    .prologue
    .line 391
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI$16;->this$0:Lcom/htc/camera/effect/EffectControlUI;

    iget-object v0, v0, Lcom/htc/camera/effect/EffectControlUI;->effectControlBarTrackingStartedEvent:Lcom/htc/camera/event/Event;

    iget-object v1, p0, Lcom/htc/camera/effect/EffectControlUI$16;->this$0:Lcom/htc/camera/effect/EffectControlUI;

    sget-object v2, Lcom/htc/camera/event/EventArgs;->empty:Lcom/htc/camera/event/EventArgs;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 392
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    .prologue
    .line 386
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI$16;->this$0:Lcom/htc/camera/effect/EffectControlUI;

    iget-object v0, v0, Lcom/htc/camera/effect/EffectControlUI;->effectControlBarTrackingStoppedEvent:Lcom/htc/camera/event/Event;

    iget-object v1, p0, Lcom/htc/camera/effect/EffectControlUI$16;->this$0:Lcom/htc/camera/effect/EffectControlUI;

    sget-object v2, Lcom/htc/camera/event/EventArgs;->empty:Lcom/htc/camera/event/EventArgs;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 387
    return-void
.end method
