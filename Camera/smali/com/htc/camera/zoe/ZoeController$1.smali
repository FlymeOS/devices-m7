.class Lcom/htc/camera/zoe/ZoeController$1;
.super Ljava/lang/Object;
.source "ZoeController.java"

# interfaces
.implements Lcom/htc/camera/debug/b;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/zoe/ZoeController;


# direct methods
.method constructor <init>(Lcom/htc/camera/zoe/ZoeController;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/htc/camera/zoe/ZoeController$1;->this$0:Lcom/htc/camera/zoe/ZoeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeout(Lcom/htc/camera/Handle;Ljava/lang/String;JJLjava/lang/Object;)V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$1;->this$0:Lcom/htc/camera/zoe/ZoeController;

    # invokes: Lcom/htc/camera/zoe/ZoeController;->finishVideoSnapshot()V
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeController;->access$000(Lcom/htc/camera/zoe/ZoeController;)V

    .line 232
    return-void
.end method
