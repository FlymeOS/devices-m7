.class Lcom/htc/camera/effect/EffectManager$9;
.super Ljava/lang/Object;
.source "EffectManager.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Lcom/htc/camera/capturemode/CaptureMode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/effect/EffectManager;


# direct methods
.method constructor <init>(Lcom/htc/camera/effect/EffectManager;)V
    .locals 0

    .prologue
    .line 934
    iput-object p1, p0, Lcom/htc/camera/effect/EffectManager$9;->this$0:Lcom/htc/camera/effect/EffectManager;

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
            "Lcom/htc/camera/capturemode/CaptureMode;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/capturemode/CaptureMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 938
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager$9;->this$0:Lcom/htc/camera/effect/EffectManager;

    # getter for: Lcom/htc/camera/effect/EffectManager;->m_EffectContextHandles:Lcom/htc/camera/s;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectManager;->access$1400(Lcom/htc/camera/effect/EffectManager;)Lcom/htc/camera/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/s;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 939
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager$9;->this$0:Lcom/htc/camera/effect/EffectManager;

    # getter for: Lcom/htc/camera/effect/EffectManager;->m_EffectContextHandles:Lcom/htc/camera/s;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectManager;->access$1400(Lcom/htc/camera/effect/EffectManager;)Lcom/htc/camera/s;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/camera/s;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectManager$EffectContextHandle;

    invoke-virtual {v0}, Lcom/htc/camera/effect/EffectManager$EffectContextHandle;->clearEffects()V

    .line 938
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 940
    :cond_0
    return-void
.end method
