.class Lcom/htc/camera/effect/EffectControlUI$1;
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
    .line 170
    iput-object p1, p0, Lcom/htc/camera/effect/EffectControlUI$1;->this$0:Lcom/htc/camera/effect/EffectControlUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 2
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
    .line 174
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI$1;->this$0:Lcom/htc/camera/effect/EffectControlUI;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/effect/EffectControlUI;->m_ToastHandle:Lcom/htc/camera/Handle;
    invoke-static {v0, v1}, Lcom/htc/camera/effect/EffectControlUI;->access$002(Lcom/htc/camera/effect/EffectControlUI;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;

    .line 175
    return-void
.end method
