.class Lcom/htc/camera/io/SDCardUI$1;
.super Ljava/lang/Object;
.source "SDCardUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/io/SDCardUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/io/SDCardUI;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/htc/camera/io/SDCardUI$1;->this$0:Lcom/htc/camera/io/SDCardUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/16 v2, 0x2711

    const/4 v3, 0x0

    .line 79
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI$1;->this$0:Lcom/htc/camera/io/SDCardUI;

    # getter for: Lcom/htc/camera/io/SDCardUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/io/SDCardUI;->access$000(Lcom/htc/camera/io/SDCardUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Read SD card class level - Start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI$1;->this$0:Lcom/htc/camera/io/SDCardUI;

    # invokes: Lcom/htc/camera/io/SDCardUI;->removeMessages(I)V
    invoke-static {v0, v2}, Lcom/htc/camera/io/SDCardUI;->access$100(Lcom/htc/camera/io/SDCardUI;I)V

    .line 105
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI$1;->this$0:Lcom/htc/camera/io/SDCardUI;

    iget-object v1, p0, Lcom/htc/camera/io/SDCardUI$1;->this$0:Lcom/htc/camera/io/SDCardUI;

    const/4 v5, 0x0

    move v4, v3

    # invokes: Lcom/htc/camera/io/SDCardUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z
    invoke-static/range {v0 .. v5}, Lcom/htc/camera/io/SDCardUI;->access$200(Lcom/htc/camera/io/SDCardUI;Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 107
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI$1;->this$0:Lcom/htc/camera/io/SDCardUI;

    # getter for: Lcom/htc/camera/io/SDCardUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/io/SDCardUI;->access$300(Lcom/htc/camera/io/SDCardUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Read SD card class level - End"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method
