.class Lcom/htc/camera/sina/GifModeUI$1;
.super Ljava/lang/Object;
.source "GifModeUI.java"

# interfaces
.implements Lcom/htc/camera/event/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/event/a",
        "<",
        "Lcom/htc/camera/ExternalCommandEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/sina/GifModeUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/sina/GifModeUI;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lcom/htc/camera/sina/GifModeUI$1;->this$0:Lcom/htc/camera/sina/GifModeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/ExternalCommandEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/ExternalCommandEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/ExternalCommandEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 378
    iget-object v0, p3, Lcom/htc/camera/ExternalCommandEventArgs;->command:Ljava/lang/String;

    .line 379
    const-string v1, "help"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeUI$1;->this$0:Lcom/htc/camera/sina/GifModeUI;

    # getter for: Lcom/htc/camera/sina/GifModeUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/sina/GifModeUI;->access$000(Lcom/htc/camera/sina/GifModeUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "set_conti_burst_long_press_timeout TIMEOUT(Milliseconds)"

    invoke-virtual {p3, v0, v1}, Lcom/htc/camera/ExternalCommandEventArgs;->response(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    :cond_0
    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 374
    check-cast p3, Lcom/htc/camera/ExternalCommandEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/sina/GifModeUI$1;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/ExternalCommandEventArgs;)V

    return-void
.end method
