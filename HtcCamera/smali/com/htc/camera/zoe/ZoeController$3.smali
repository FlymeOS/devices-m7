.class Lcom/htc/camera/zoe/ZoeController$3;
.super Ljava/lang/Object;
.source "ZoeController.java"

# interfaces
.implements Lcom/htc/camera/event/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/event/a",
        "<",
        "Lcom/htc/camera/event/EventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/zoe/ZoeController;


# direct methods
.method constructor <init>(Lcom/htc/camera/zoe/ZoeController;)V
    .locals 0

    .prologue
    .line 1112
    iput-object p1, p0, Lcom/htc/camera/zoe/ZoeController$3;->this$0:Lcom/htc/camera/zoe/ZoeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/event/EventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/event/EventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1116
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$3;->this$0:Lcom/htc/camera/zoe/ZoeController;

    # invokes: Lcom/htc/camera/zoe/ZoeController;->releaseMediaRecorder()V
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeController;->access$200(Lcom/htc/camera/zoe/ZoeController;)V

    .line 1117
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$3;->this$0:Lcom/htc/camera/zoe/ZoeController;

    # setter for: Lcom/htc/camera/zoe/ZoeController;->m_PreparedDirectoryCounter:Lcom/htc/camera/io/FileCounter;
    invoke-static {v0, v1}, Lcom/htc/camera/zoe/ZoeController;->access$302(Lcom/htc/camera/zoe/ZoeController;Lcom/htc/camera/io/FileCounter;)Lcom/htc/camera/io/FileCounter;

    .line 1118
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$3;->this$0:Lcom/htc/camera/zoe/ZoeController;

    # setter for: Lcom/htc/camera/zoe/ZoeController;->m_PreparedFileCounter:Lcom/htc/camera/io/FileCounter;
    invoke-static {v0, v1}, Lcom/htc/camera/zoe/ZoeController;->access$402(Lcom/htc/camera/zoe/ZoeController;Lcom/htc/camera/io/FileCounter;)Lcom/htc/camera/io/FileCounter;

    .line 1119
    return-void
.end method
