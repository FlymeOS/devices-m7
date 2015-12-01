.class Lcom/htc/camera/effect/EffectManager$7$1;
.super Ljava/lang/Object;
.source "EffectManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/htc/camera/effect/EffectManager$7;


# direct methods
.method constructor <init>(Lcom/htc/camera/effect/EffectManager$7;)V
    .locals 0

    .prologue
    .line 784
    iput-object p1, p0, Lcom/htc/camera/effect/EffectManager$7$1;->this$1:Lcom/htc/camera/effect/EffectManager$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 788
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager$7$1;->this$1:Lcom/htc/camera/effect/EffectManager$7;

    iget-object v0, v0, Lcom/htc/camera/effect/EffectManager$7;->this$0:Lcom/htc/camera/effect/EffectManager;

    # getter for: Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectManager;->access$2000(Lcom/htc/camera/effect/EffectManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Capture failed due to driver failure"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager$7$1;->this$1:Lcom/htc/camera/effect/EffectManager$7;

    iget-object v0, v0, Lcom/htc/camera/effect/EffectManager$7;->this$0:Lcom/htc/camera/effect/EffectManager;

    const/4 v1, 0x1

    # setter for: Lcom/htc/camera/effect/EffectManager;->m_NeedToApplyEffectAgain:Z
    invoke-static {v0, v1}, Lcom/htc/camera/effect/EffectManager;->access$1802(Lcom/htc/camera/effect/EffectManager;Z)Z

    .line 790
    return-void
.end method
