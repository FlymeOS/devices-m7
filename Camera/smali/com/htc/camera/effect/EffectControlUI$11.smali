.class Lcom/htc/camera/effect/EffectControlUI$11;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/effect/EffectControlUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/effect/EffectControlUI;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/htc/camera/effect/EffectControlUI$11;->this$0:Lcom/htc/camera/effect/EffectControlUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 273
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI$11;->this$0:Lcom/htc/camera/effect/EffectControlUI;

    # getter for: Lcom/htc/camera/effect/EffectControlUI;->m_ControlBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectControlUI;->access$500(Lcom/htc/camera/effect/EffectControlUI;)Landroid/widget/SeekBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI$11;->this$0:Lcom/htc/camera/effect/EffectControlUI;

    # invokes: Lcom/htc/camera/effect/EffectControlUI;->showControls()V
    invoke-static {v0}, Lcom/htc/camera/effect/EffectControlUI;->access$400(Lcom/htc/camera/effect/EffectControlUI;)V

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI$11;->this$0:Lcom/htc/camera/effect/EffectControlUI;

    # invokes: Lcom/htc/camera/effect/EffectControlUI;->hideControls()V
    invoke-static {v0}, Lcom/htc/camera/effect/EffectControlUI;->access$100(Lcom/htc/camera/effect/EffectControlUI;)V

    goto :goto_0
.end method
