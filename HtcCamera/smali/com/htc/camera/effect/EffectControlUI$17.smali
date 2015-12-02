.class Lcom/htc/camera/effect/EffectControlUI$17;
.super Ljava/lang/Object;
.source "EffectControlUI.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Lcom/htc/camera/imaging/Size;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/effect/EffectControlUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/effect/EffectControlUI;)V
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, Lcom/htc/camera/effect/EffectControlUI$17;->this$0:Lcom/htc/camera/effect/EffectControlUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/imaging/Size;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/imaging/Size;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 406
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI$17;->this$0:Lcom/htc/camera/effect/EffectControlUI;

    iget-object v1, p0, Lcom/htc/camera/effect/EffectControlUI$17;->this$0:Lcom/htc/camera/effect/EffectControlUI;

    # getter for: Lcom/htc/camera/effect/EffectControlUI;->m_ControlBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/htc/camera/effect/EffectControlUI;->access$500(Lcom/htc/camera/effect/EffectControlUI;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    # invokes: Lcom/htc/camera/effect/EffectControlUI;->onControlBarProgressChanged(I)V
    invoke-static {v0, v1}, Lcom/htc/camera/effect/EffectControlUI;->access$1300(Lcom/htc/camera/effect/EffectControlUI;I)V

    .line 408
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI$17;->this$0:Lcom/htc/camera/effect/EffectControlUI;

    iget-object v1, p0, Lcom/htc/camera/effect/EffectControlUI$17;->this$0:Lcom/htc/camera/effect/EffectControlUI;

    # getter for: Lcom/htc/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/htc/camera/widget/EffectControlCircle;
    invoke-static {v1}, Lcom/htc/camera/effect/EffectControlUI;->access$1100(Lcom/htc/camera/effect/EffectControlUI;)Lcom/htc/camera/widget/EffectControlCircle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/widget/EffectControlCircle;->getCenterPoint()Landroid/graphics/Point;

    move-result-object v1

    # invokes: Lcom/htc/camera/effect/EffectControlUI;->onCenterPointChanged(Landroid/graphics/Point;)V
    invoke-static {v0, v1}, Lcom/htc/camera/effect/EffectControlUI;->access$1000(Lcom/htc/camera/effect/EffectControlUI;Landroid/graphics/Point;)V

    .line 410
    :cond_0
    return-void
.end method
