.class Lcom/htc/camera/component/AudioManager$1$1;
.super Ljava/lang/Object;
.source "AudioManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/htc/camera/component/AudioManager$1;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/AudioManager$1;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/htc/camera/component/AudioManager$1$1;->this$1:Lcom/htc/camera/component/AudioManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/htc/camera/component/AudioManager$1$1;->this$1:Lcom/htc/camera/component/AudioManager$1;

    iget-object v0, v0, Lcom/htc/camera/component/AudioManager$1;->this$0:Lcom/htc/camera/component/AudioManager;

    # invokes: Lcom/htc/camera/component/AudioManager;->onSimOperatorChanged()V
    invoke-static {v0}, Lcom/htc/camera/component/AudioManager;->access$000(Lcom/htc/camera/component/AudioManager;)V

    .line 157
    return-void
.end method
