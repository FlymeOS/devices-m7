.class Lcom/htc/camera/zoe/ZoeUI$2;
.super Ljava/lang/Object;
.source "ZoeUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/zoe/ZoeUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/zoe/ZoeUI;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/htc/camera/zoe/ZoeUI$2;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/16 v2, 0x2717

    const/4 v3, 0x0

    .line 153
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$2;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    # getter for: Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeUI;->access$100(Lcom/htc/camera/zoe/ZoeUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "readSDCardClassValue() - Run"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$2;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    # invokes: Lcom/htc/camera/zoe/ZoeUI;->removeMessages(I)V
    invoke-static {v0, v2}, Lcom/htc/camera/zoe/ZoeUI;->access$200(Lcom/htc/camera/zoe/ZoeUI;I)V

    .line 179
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$2;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI$2;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    const/4 v5, 0x0

    move v4, v3

    # invokes: Lcom/htc/camera/zoe/ZoeUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z
    invoke-static/range {v0 .. v5}, Lcom/htc/camera/zoe/ZoeUI;->access$300(Lcom/htc/camera/zoe/ZoeUI;Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 181
    return-void
.end method
