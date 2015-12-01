.class Lcom/htc/camera/effect/EffectController$2;
.super Ljava/lang/Object;
.source "EffectController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/effect/EffectController;

.field final synthetic val$applyImmediately:Z

.field final synthetic val$effect:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/htc/camera/effect/EffectController;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/htc/camera/effect/EffectController$2;->this$0:Lcom/htc/camera/effect/EffectController;

    iput-object p2, p0, Lcom/htc/camera/effect/EffectController$2;->val$effect:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/htc/camera/effect/EffectController$2;->val$applyImmediately:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 207
    iget-object v0, p0, Lcom/htc/camera/effect/EffectController$2;->this$0:Lcom/htc/camera/effect/EffectController;

    iget-object v1, p0, Lcom/htc/camera/effect/EffectController$2;->val$effect:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/htc/camera/effect/EffectController$2;->val$applyImmediately:Z

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/effect/EffectController;->setColorEffect(Ljava/lang/String;Z)V

    .line 208
    return-void
.end method
