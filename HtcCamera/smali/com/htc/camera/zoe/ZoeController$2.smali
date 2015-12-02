.class Lcom/htc/camera/zoe/ZoeController$2;
.super Ljava/lang/Object;
.source "ZoeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/zoe/ZoeController;


# direct methods
.method constructor <init>(Lcom/htc/camera/zoe/ZoeController;)V
    .locals 0

    .prologue
    .line 627
    iput-object p1, p0, Lcom/htc/camera/zoe/ZoeController$2;->this$0:Lcom/htc/camera/zoe/ZoeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$2;->this$0:Lcom/htc/camera/zoe/ZoeController;

    # invokes: Lcom/htc/camera/zoe/ZoeController;->loadShutterSound()V
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeController;->access$100(Lcom/htc/camera/zoe/ZoeController;)V

    .line 632
    return-void
.end method
