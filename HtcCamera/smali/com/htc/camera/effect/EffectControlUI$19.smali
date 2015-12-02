.class Lcom/htc/camera/effect/EffectControlUI$19;
.super Ljava/lang/Object;
.source "EffectControlUI.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/effect/EffectControlUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/effect/EffectControlUI;)V
    .locals 0

    .prologue
    .line 431
    iput-object p1, p0, Lcom/htc/camera/effect/EffectControlUI$19;->this$0:Lcom/htc/camera/effect/EffectControlUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 434
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI$19;->this$0:Lcom/htc/camera/effect/EffectControlUI;

    # getter for: Lcom/htc/camera/effect/EffectControlUI;->m_ControlBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectControlUI;->access$500(Lcom/htc/camera/effect/EffectControlUI;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 435
    iget-object v1, p0, Lcom/htc/camera/effect/EffectControlUI$19;->this$0:Lcom/htc/camera/effect/EffectControlUI;

    # getter for: Lcom/htc/camera/effect/EffectControlUI;->m_ControlBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/htc/camera/effect/EffectControlUI;->access$500(Lcom/htc/camera/effect/EffectControlUI;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 436
    const/4 v1, 0x0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p2, v1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 437
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI$19;->this$0:Lcom/htc/camera/effect/EffectControlUI;

    # getter for: Lcom/htc/camera/effect/EffectControlUI;->m_ControlBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectControlUI;->access$500(Lcom/htc/camera/effect/EffectControlUI;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
