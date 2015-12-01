.class Lcom/htc/camera/component/FlashController$7;
.super Ljava/lang/Object;
.source "FlashController.java"

# interfaces
.implements Lcom/htc/camera/base/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/base/f",
        "<",
        "Lcom/htc/camera/CameraSettings;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/FlashController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/FlashController;)V
    .locals 0

    .prologue
    .line 422
    iput-object p1, p0, Lcom/htc/camera/component/FlashController$7;->this$0:Lcom/htc/camera/component/FlashController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Ljava/lang/Object;Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/PropertyChangeEventArgs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Lcom/htc/camera/CameraSettings;",
            ">;",
            "Lcom/htc/camera/base/PropertyChangeEventArgs",
            "<",
            "Lcom/htc/camera/CameraSettings;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v2, 0x3e9

    .line 426
    iget-object v0, p0, Lcom/htc/camera/component/FlashController$7;->this$0:Lcom/htc/camera/component/FlashController;

    iget-object v1, p0, Lcom/htc/camera/component/FlashController$7;->this$0:Lcom/htc/camera/component/FlashController;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/component/FlashController;->hasMessages(Lcom/htc/camera/component/Component;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/htc/camera/component/FlashController$7;->this$0:Lcom/htc/camera/component/FlashController;

    iget-object v1, p0, Lcom/htc/camera/component/FlashController$7;->this$0:Lcom/htc/camera/component/FlashController;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/component/FlashController;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    .line 428
    :cond_0
    return-void
.end method
