.class Lcom/htc/camera/effect/EffectControlUI$9;
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
    .line 246
    iput-object p1, p0, Lcom/htc/camera/effect/EffectControlUI$9;->this$0:Lcom/htc/camera/effect/EffectControlUI;

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
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI$9;->this$0:Lcom/htc/camera/effect/EffectControlUI;

    # getter for: Lcom/htc/camera/effect/EffectControlUI;->m_IsControlsNeeded:Z
    invoke-static {v0}, Lcom/htc/camera/effect/EffectControlUI;->access$600(Lcom/htc/camera/effect/EffectControlUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI$9;->this$0:Lcom/htc/camera/effect/EffectControlUI;

    # getter for: Lcom/htc/camera/effect/EffectControlUI;->m_IsPenddingShowToast:Z
    invoke-static {v0}, Lcom/htc/camera/effect/EffectControlUI;->access$700(Lcom/htc/camera/effect/EffectControlUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI$9;->this$0:Lcom/htc/camera/effect/EffectControlUI;

    # invokes: Lcom/htc/camera/effect/EffectControlUI;->showToast()V
    invoke-static {v0}, Lcom/htc/camera/effect/EffectControlUI;->access$800(Lcom/htc/camera/effect/EffectControlUI;)V

    .line 255
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI$9;->this$0:Lcom/htc/camera/effect/EffectControlUI;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/effect/EffectControlUI;->m_IsPenddingShowToast:Z
    invoke-static {v0, v1}, Lcom/htc/camera/effect/EffectControlUI;->access$702(Lcom/htc/camera/effect/EffectControlUI;Z)Z

    .line 258
    :cond_0
    return-void
.end method
