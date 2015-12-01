.class Lcom/htc/camera/component/ContinuousBurstController$2;
.super Ljava/lang/Object;
.source "ContinuousBurstController.java"

# interfaces
.implements Lcom/htc/camera/debug/b;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ContinuousBurstController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ContinuousBurstController;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/htc/camera/component/ContinuousBurstController$2;->this$0:Lcom/htc/camera/component/ContinuousBurstController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeout(Lcom/htc/camera/Handle;Ljava/lang/String;JJLjava/lang/Object;)V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController$2;->this$0:Lcom/htc/camera/component/ContinuousBurstController;

    check-cast p7, Ljava/lang/Integer;

    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    # invokes: Lcom/htc/camera/component/ContinuousBurstController;->onJpegCallbackTimeout(I)V
    invoke-static {v0, v1}, Lcom/htc/camera/component/ContinuousBurstController;->access$000(Lcom/htc/camera/component/ContinuousBurstController;I)V

    .line 227
    return-void
.end method
