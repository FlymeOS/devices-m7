.class Lcom/htc/camera/effect/EffectManager$2;
.super Ljava/lang/Object;
.source "EffectManager.java"

# interfaces
.implements Lcom/htc/camera/base/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/base/f",
        "<",
        "Lcom/htc/camera/CameraSettings;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/effect/EffectManager;


# direct methods
.method constructor <init>(Lcom/htc/camera/effect/EffectManager;)V
    .locals 0

    .prologue
    .line 683
    iput-object p1, p0, Lcom/htc/camera/effect/EffectManager$2;->this$0:Lcom/htc/camera/effect/EffectManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Ljava/lang/Object;Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/PropertyChangeEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Lcom/htc/camera/CameraSettings;",
            ">;",
            "Lcom/htc/camera/base/PropertyChangeEventArgs",
            "<",
            "Lcom/htc/camera/CameraSettings;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 687
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager$2;->this$0:Lcom/htc/camera/effect/EffectManager;

    # getter for: Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectManager;->access$600(Lcom/htc/camera/effect/EffectManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "initializeOverride() - Reset backup image settings"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager$2;->this$0:Lcom/htc/camera/effect/EffectManager;

    # getter for: Lcom/htc/camera/effect/EffectManager;->m_LastAppliedEffect:Lcom/htc/camera/effect/EffectBase;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectManager;->access$700(Lcom/htc/camera/effect/EffectManager;)Lcom/htc/camera/effect/EffectBase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager$2;->this$0:Lcom/htc/camera/effect/EffectManager;

    # getter for: Lcom/htc/camera/effect/EffectManager;->m_LastAppliedEffect:Lcom/htc/camera/effect/EffectBase;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectManager;->access$700(Lcom/htc/camera/effect/EffectManager;)Lcom/htc/camera/effect/EffectBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/effect/EffectBase;->resetBackupImageSettings()V

    .line 692
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager$2;->this$0:Lcom/htc/camera/effect/EffectManager;

    # getter for: Lcom/htc/camera/effect/EffectManager;->m_LastAppliedScene:Lcom/htc/camera/effect/EffectBase;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectManager;->access$800(Lcom/htc/camera/effect/EffectManager;)Lcom/htc/camera/effect/EffectBase;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 693
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager$2;->this$0:Lcom/htc/camera/effect/EffectManager;

    # getter for: Lcom/htc/camera/effect/EffectManager;->m_LastAppliedScene:Lcom/htc/camera/effect/EffectBase;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectManager;->access$800(Lcom/htc/camera/effect/EffectManager;)Lcom/htc/camera/effect/EffectBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/effect/EffectBase;->resetBackupImageSettings()V

    .line 694
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager$2;->this$0:Lcom/htc/camera/effect/EffectManager;

    # getter for: Lcom/htc/camera/effect/EffectManager;->m_LastAppliedVideoScene:Lcom/htc/camera/effect/EffectBase;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectManager;->access$900(Lcom/htc/camera/effect/EffectManager;)Lcom/htc/camera/effect/EffectBase;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 695
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager$2;->this$0:Lcom/htc/camera/effect/EffectManager;

    # getter for: Lcom/htc/camera/effect/EffectManager;->m_LastAppliedVideoScene:Lcom/htc/camera/effect/EffectBase;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectManager;->access$900(Lcom/htc/camera/effect/EffectManager;)Lcom/htc/camera/effect/EffectBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/effect/EffectBase;->resetBackupImageSettings()V

    .line 696
    :cond_2
    return-void
.end method
