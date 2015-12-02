.class Lcom/htc/camera/sina/GifModeUI$4;
.super Lcom/htc/camera/trigger/Trigger;
.source "GifModeUI.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/sina/GifModeUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/sina/GifModeUI;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 439
    iput-object p1, p0, Lcom/htc/camera/sina/GifModeUI$4;->this$0:Lcom/htc/camera/sina/GifModeUI;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 2

    .prologue
    .line 444
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeUI$4;->this$0:Lcom/htc/camera/sina/GifModeUI;

    # getter for: Lcom/htc/camera/sina/GifModeUI;->m_IsModeEntered:Z
    invoke-static {v0}, Lcom/htc/camera/sina/GifModeUI;->access$700(Lcom/htc/camera/sina/GifModeUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    :goto_0
    return-void

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeUI$4;->this$0:Lcom/htc/camera/sina/GifModeUI;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/sina/GifModeUI;->m_CanCapture:Z
    invoke-static {v0, v1}, Lcom/htc/camera/sina/GifModeUI;->access$602(Lcom/htc/camera/sina/GifModeUI;Z)Z

    goto :goto_0
.end method
