.class Lcom/htc/camera/component/AutoBacklightIntentSender$4;
.super Ljava/lang/Object;
.source "AutoBacklightIntentSender.java"

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
.field final synthetic this$0:Lcom/htc/camera/component/AutoBacklightIntentSender;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/AutoBacklightIntentSender;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/htc/camera/component/AutoBacklightIntentSender$4;->this$0:Lcom/htc/camera/component/AutoBacklightIntentSender;

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
    .line 219
    iget-object v0, p0, Lcom/htc/camera/component/AutoBacklightIntentSender$4;->this$0:Lcom/htc/camera/component/AutoBacklightIntentSender;

    # invokes: Lcom/htc/camera/component/AutoBacklightIntentSender;->disableAutoBacklight()V
    invoke-static {v0}, Lcom/htc/camera/component/AutoBacklightIntentSender;->access$1200(Lcom/htc/camera/component/AutoBacklightIntentSender;)V

    .line 220
    return-void
.end method
