.class Lcom/htc/camera/actionscreen/ActionScreen$4$1;
.super Ljava/lang/Object;
.source "ActionScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/htc/camera/actionscreen/ActionScreen$4;

.field final synthetic val$e:Lcom/htc/camera/CaptureEventArgs;


# direct methods
.method constructor <init>(Lcom/htc/camera/actionscreen/ActionScreen$4;Lcom/htc/camera/CaptureEventArgs;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/htc/camera/actionscreen/ActionScreen$4$1;->this$1:Lcom/htc/camera/actionscreen/ActionScreen$4;

    iput-object p2, p0, Lcom/htc/camera/actionscreen/ActionScreen$4$1;->val$e:Lcom/htc/camera/CaptureEventArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/htc/camera/actionscreen/ActionScreen$4$1;->this$1:Lcom/htc/camera/actionscreen/ActionScreen$4;

    iget-object v0, v0, Lcom/htc/camera/actionscreen/ActionScreen$4;->this$0:Lcom/htc/camera/actionscreen/ActionScreen;

    # getter for: Lcom/htc/camera/actionscreen/ActionScreen;->m_IsPrepared:Z
    invoke-static {v0}, Lcom/htc/camera/actionscreen/ActionScreen;->access$000(Lcom/htc/camera/actionscreen/ActionScreen;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/actionscreen/ActionScreen$4$1;->val$e:Lcom/htc/camera/CaptureEventArgs;

    iget-object v0, v0, Lcom/htc/camera/CaptureEventArgs;->captureHandle:Lcom/htc/camera/CaptureHandle;

    iget-object v1, p0, Lcom/htc/camera/actionscreen/ActionScreen$4$1;->this$1:Lcom/htc/camera/actionscreen/ActionScreen$4;

    iget-object v1, v1, Lcom/htc/camera/actionscreen/ActionScreen$4;->this$0:Lcom/htc/camera/actionscreen/ActionScreen;

    # getter for: Lcom/htc/camera/actionscreen/ActionScreen;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;
    invoke-static {v1}, Lcom/htc/camera/actionscreen/ActionScreen;->access$100(Lcom/htc/camera/actionscreen/ActionScreen;)Lcom/htc/camera/CaptureHandle;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 250
    iget-object v0, p0, Lcom/htc/camera/actionscreen/ActionScreen$4$1;->this$1:Lcom/htc/camera/actionscreen/ActionScreen$4;

    iget-object v0, v0, Lcom/htc/camera/actionscreen/ActionScreen$4;->this$0:Lcom/htc/camera/actionscreen/ActionScreen;

    iget-object v0, v0, Lcom/htc/camera/actionscreen/ActionScreen;->state:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/UIState;->Opened:Lcom/htc/camera/UIState;

    if-ne v0, v1, :cond_2

    .line 251
    iget-object v0, p0, Lcom/htc/camera/actionscreen/ActionScreen$4$1;->this$1:Lcom/htc/camera/actionscreen/ActionScreen$4;

    iget-object v0, v0, Lcom/htc/camera/actionscreen/ActionScreen$4;->this$0:Lcom/htc/camera/actionscreen/ActionScreen;

    invoke-virtual {v0}, Lcom/htc/camera/actionscreen/ActionScreen;->onCaptureFailed()V

    goto :goto_0

    .line 253
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/actionscreen/ActionScreen$4$1;->this$1:Lcom/htc/camera/actionscreen/ActionScreen$4;

    iget-object v0, v0, Lcom/htc/camera/actionscreen/ActionScreen$4;->this$0:Lcom/htc/camera/actionscreen/ActionScreen;

    const/4 v1, 0x1

    # setter for: Lcom/htc/camera/actionscreen/ActionScreen;->m_IsCaptureFailed:Z
    invoke-static {v0, v1}, Lcom/htc/camera/actionscreen/ActionScreen;->access$502(Lcom/htc/camera/actionscreen/ActionScreen;Z)Z

    goto :goto_0
.end method
