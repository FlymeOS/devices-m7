.class Lcom/htc/camera/component/AudioManager$1;
.super Ljava/lang/Object;
.source "AudioManager.java"

# interfaces
.implements Lcom/htc/camera/base/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/base/f",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/AudioManager;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/AudioManager;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/htc/camera/component/AudioManager$1;->this$0:Lcom/htc/camera/component/AudioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Ljava/lang/Object;Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/PropertyChangeEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/htc/camera/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/camera/component/AudioManager$1;->this$0:Lcom/htc/camera/component/AudioManager;

    invoke-virtual {v0}, Lcom/htc/camera/component/AudioManager;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/htc/camera/component/AudioManager$1;->this$0:Lcom/htc/camera/component/AudioManager;

    # invokes: Lcom/htc/camera/component/AudioManager;->onSimOperatorChanged()V
    invoke-static {v0}, Lcom/htc/camera/component/AudioManager;->access$000(Lcom/htc/camera/component/AudioManager;)V

    .line 160
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/AudioManager$1;->this$0:Lcom/htc/camera/component/AudioManager;

    new-instance v1, Lcom/htc/camera/component/AudioManager$1$1;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/AudioManager$1$1;-><init>(Lcom/htc/camera/component/AudioManager$1;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/AudioManager;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
