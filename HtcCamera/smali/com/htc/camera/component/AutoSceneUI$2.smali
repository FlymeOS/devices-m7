.class Lcom/htc/camera/component/AutoSceneUI$2;
.super Ljava/lang/Object;
.source "AutoSceneUI.java"

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
.field final synthetic this$0:Lcom/htc/camera/component/AutoSceneUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/AutoSceneUI;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/htc/camera/component/AutoSceneUI$2;->this$0:Lcom/htc/camera/component/AutoSceneUI;

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
    .line 255
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI$2;->this$0:Lcom/htc/camera/component/AutoSceneUI;

    # getter for: Lcom/htc/camera/component/AutoSceneUI;->scene:Lcom/htc/camera/property/Property;
    invoke-static {v0}, Lcom/htc/camera/component/AutoSceneUI;->access$100(Lcom/htc/camera/component/AutoSceneUI;)Lcom/htc/camera/property/Property;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/AutoDetectedScene;->None:Lcom/htc/camera/AutoDetectedScene;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    .line 256
    return-void
.end method
