.class Lcom/htc/camera/component/ZoomBar$3;
.super Ljava/lang/Object;
.source "ZoomBar.java"

# interfaces
.implements Lcom/htc/camera/event/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/event/a",
        "<",
        "Lcom/htc/camera/input/KeyEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ZoomBar;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ZoomBar;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/htc/camera/component/ZoomBar$3;->this$0:Lcom/htc/camera/component/ZoomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 218
    check-cast p3, Lcom/htc/camera/input/KeyEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/component/ZoomBar$3;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/input/KeyEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/input/KeyEventArgs;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/input/KeyEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/input/KeyEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/16 v2, 0x2712

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 223
    iget-object v0, p0, Lcom/htc/camera/component/ZoomBar$3;->this$0:Lcom/htc/camera/component/ZoomBar;

    invoke-virtual {v0}, Lcom/htc/camera/component/ZoomBar;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraSettings;->volumeKeyControlType:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/VolumeKeyType;->Zoom:Lcom/htc/camera/VolumeKeyType;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    :goto_0
    return-void

    .line 226
    :cond_0
    iget v0, p3, Lcom/htc/camera/input/KeyEventArgs;->keyCode:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 232
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/component/ZoomBar$3;->this$0:Lcom/htc/camera/component/ZoomBar;

    iget-object v1, p0, Lcom/htc/camera/component/ZoomBar$3;->this$0:Lcom/htc/camera/component/ZoomBar;

    move v3, v6

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/component/ZoomBar;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z

    .line 237
    :goto_1
    invoke-virtual {p3}, Lcom/htc/camera/input/KeyEventArgs;->setHandled()V

    goto :goto_0

    .line 229
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/component/ZoomBar$3;->this$0:Lcom/htc/camera/component/ZoomBar;

    iget-object v1, p0, Lcom/htc/camera/component/ZoomBar$3;->this$0:Lcom/htc/camera/component/ZoomBar;

    const/4 v3, -0x1

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/component/ZoomBar;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z

    goto :goto_1

    .line 226
    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
