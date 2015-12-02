.class Lcom/htc/camera/burst/AutoBurstCameraBase$2;
.super Ljava/lang/Object;
.source "AutoBurstCameraBase.java"

# interfaces
.implements Lcom/htc/camera/event/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/event/a",
        "<",
        "Lcom/htc/camera/event/EventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/burst/AutoBurstCameraBase;


# direct methods
.method constructor <init>(Lcom/htc/camera/burst/AutoBurstCameraBase;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/htc/camera/burst/AutoBurstCameraBase$2;->this$0:Lcom/htc/camera/burst/AutoBurstCameraBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/event/EventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/event/EventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/htc/camera/burst/AutoBurstCameraBase$2;->this$0:Lcom/htc/camera/burst/AutoBurstCameraBase;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/burst/AutoBurstCameraBase;->m_AutoBurstState:Lcom/htc/camera/burst/AutoBurstState;
    invoke-static {v0, v1}, Lcom/htc/camera/burst/AutoBurstCameraBase;->access$102(Lcom/htc/camera/burst/AutoBurstCameraBase;Lcom/htc/camera/burst/AutoBurstState;)Lcom/htc/camera/burst/AutoBurstState;

    .line 119
    return-void
.end method
