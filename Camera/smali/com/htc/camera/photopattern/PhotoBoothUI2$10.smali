.class Lcom/htc/camera/photopattern/PhotoBoothUI2$10;
.super Ljava/lang/Object;
.source "PhotoBoothUI2.java"

# interfaces
.implements Lcom/htc/camera/base/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/base/b",
        "<",
        "Lcom/htc/camera/base/EventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;


# direct methods
.method constructor <init>(Lcom/htc/camera/photopattern/PhotoBoothUI2;)V
    .locals 0

    .prologue
    .line 1248
    iput-object p1, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$10;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/base/EventArgs;",
            ">;",
            "Lcom/htc/camera/base/EventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1252
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$10;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    iget-object v0, v0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->isPhotoBoothActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$10;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    # getter for: Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_IsCapturing:Z
    invoke-static {v0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->access$1000(Lcom/htc/camera/photopattern/PhotoBoothUI2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1253
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$10;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    invoke-virtual {v0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->stopCapture()Z

    .line 1254
    :cond_0
    return-void
.end method
