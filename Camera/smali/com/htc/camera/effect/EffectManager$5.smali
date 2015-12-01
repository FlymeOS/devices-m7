.class Lcom/htc/camera/effect/EffectManager$5;
.super Lcom/htc/camera/data/Trigger;
.source "EffectManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/data/Trigger",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/effect/EffectManager;


# direct methods
.method constructor <init>(Lcom/htc/camera/effect/EffectManager;Lcom/htc/camera/base/e;Lcom/htc/camera/base/PropertyKey;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 732
    iput-object p1, p0, Lcom/htc/camera/effect/EffectManager$5;->this$0:Lcom/htc/camera/effect/EffectManager;

    invoke-direct {p0, p2, p3, p4}, Lcom/htc/camera/data/Trigger;-><init>(Lcom/htc/camera/base/e;Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 2

    .prologue
    .line 736
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager$5;->this$0:Lcom/htc/camera/effect/EffectManager;

    const/4 v1, 0x2

    # invokes: Lcom/htc/camera/effect/EffectManager;->setupCurrentEffectAndScene(I)V
    invoke-static {v0, v1}, Lcom/htc/camera/effect/EffectManager;->access$1000(Lcom/htc/camera/effect/EffectManager;I)V

    .line 737
    return-void
.end method
