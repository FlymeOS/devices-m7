.class Lcom/htc/camera/actionscreen/CommonActionScreen$11;
.super Ljava/lang/Object;
.source "CommonActionScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/actionscreen/CommonActionScreen;


# direct methods
.method constructor <init>(Lcom/htc/camera/actionscreen/CommonActionScreen;)V
    .locals 0

    .prologue
    .line 467
    iput-object p1, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$11;->this$0:Lcom/htc/camera/actionscreen/CommonActionScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 470
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$11;->this$0:Lcom/htc/camera/actionscreen/CommonActionScreen;

    invoke-virtual {v0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->deletingLatestMediaEvent:Lcom/htc/camera/event/Event;

    sget-object v1, Lcom/htc/camera/event/EventArgs;->empty:Lcom/htc/camera/event/EventArgs;

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 471
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$11;->this$0:Lcom/htc/camera/actionscreen/CommonActionScreen;

    sget-object v1, Lcom/htc/camera/actionscreen/ActionScreenCloseReason;->DeleteMedia:Lcom/htc/camera/actionscreen/ActionScreenCloseReason;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/actionscreen/CommonActionScreen;->close(Lcom/htc/camera/actionscreen/ActionScreenCloseReason;Z)V

    .line 472
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$11;->this$0:Lcom/htc/camera/actionscreen/CommonActionScreen;

    invoke-virtual {v0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->deleteLatestMedia()V

    .line 473
    return-void
.end method
