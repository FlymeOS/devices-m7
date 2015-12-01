.class Lcom/htc/camera/effect/EffectControlUI$2;
.super Ljava/lang/Object;
.source "EffectControlUI.java"

# interfaces
.implements Lcom/htc/camera/base/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/base/b",
        "<",
        "Lcom/htc/camera/base/EventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/effect/EffectControlUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/effect/EffectControlUI;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/htc/camera/effect/EffectControlUI$2;->this$0:Lcom/htc/camera/effect/EffectControlUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/base/EventArgs;",
            ">;",
            "Lcom/htc/camera/base/EventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI$2;->this$0:Lcom/htc/camera/effect/EffectControlUI;

    # invokes: Lcom/htc/camera/effect/EffectControlUI;->hideControls()V
    invoke-static {v0}, Lcom/htc/camera/effect/EffectControlUI;->access$100(Lcom/htc/camera/effect/EffectControlUI;)V

    .line 183
    return-void
.end method
