.class Lcom/htc/camera/capturemode/CaptureMode$3;
.super Ljava/lang/Object;
.source "CaptureMode.java"

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
.field final synthetic this$0:Lcom/htc/camera/capturemode/CaptureMode;


# direct methods
.method constructor <init>(Lcom/htc/camera/capturemode/CaptureMode;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/htc/camera/capturemode/CaptureMode$3;->this$0:Lcom/htc/camera/capturemode/CaptureMode;

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
    .line 197
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode$3;->this$0:Lcom/htc/camera/capturemode/CaptureMode;

    # getter for: Lcom/htc/camera/capturemode/CaptureMode;->m_EffectContext:Lcom/htc/camera/effect/EffectContext;
    invoke-static {v0}, Lcom/htc/camera/capturemode/CaptureMode;->access$400(Lcom/htc/camera/capturemode/CaptureMode;)Lcom/htc/camera/effect/EffectContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/effect/EffectContext;->clearEffectsAndScenes()V

    .line 198
    return-void
.end method
