.class Lcom/htc/camera/CameraSettings$1;
.super Ljava/lang/Object;
.source "CameraSettings.java"

# interfaces
.implements Lcom/htc/camera/base/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/base/b",
        "<",
        "Lcom/htc/camera/IntentEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/CameraSettings;


# direct methods
.method constructor <init>(Lcom/htc/camera/CameraSettings;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/htc/camera/CameraSettings$1;->this$0:Lcom/htc/camera/CameraSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/IntentEventArgs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/IntentEventArgs;",
            ">;",
            "Lcom/htc/camera/IntentEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/htc/camera/CameraSettings$1;->this$0:Lcom/htc/camera/CameraSettings;

    # invokes: Lcom/htc/camera/CameraSettings;->resetPreferencesAfterLaunch()V
    invoke-static {v0}, Lcom/htc/camera/CameraSettings;->access$000(Lcom/htc/camera/CameraSettings;)V

    .line 116
    return-void
.end method

.method public bridge synthetic onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 0

    .prologue
    .line 111
    check-cast p3, Lcom/htc/camera/IntentEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/CameraSettings$1;->onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/IntentEventArgs;)V

    return-void
.end method
