.class Lcom/htc/camera/burst/BurstCameraBase$1;
.super Ljava/lang/Object;
.source "BurstCameraBase.java"

# interfaces
.implements Lcom/htc/camera/debug/b;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/burst/BurstCameraBase;


# direct methods
.method constructor <init>(Lcom/htc/camera/burst/BurstCameraBase;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/htc/camera/burst/BurstCameraBase$1;->this$0:Lcom/htc/camera/burst/BurstCameraBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeout(Lcom/htc/camera/Handle;Ljava/lang/String;JJLjava/lang/Object;)V
    .locals 3

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase$1;->this$0:Lcom/htc/camera/burst/BurstCameraBase;

    # getter for: Lcom/htc/camera/burst/BurstCameraBase;->m_JpegTimerHandle:Lcom/htc/camera/Handle;
    invoke-static {v0}, Lcom/htc/camera/burst/BurstCameraBase;->access$000(Lcom/htc/camera/burst/BurstCameraBase;)Lcom/htc/camera/Handle;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 41
    check-cast p7, [Ljava/lang/Object;

    check-cast p7, [Ljava/lang/Object;

    .line 42
    iget-object v2, p0, Lcom/htc/camera/burst/BurstCameraBase$1;->this$0:Lcom/htc/camera/burst/BurstCameraBase;

    const/4 v0, 0x0

    aget-object v0, p7, v0

    check-cast v0, Lcom/htc/camera/Handle;

    const/4 v1, 0x1

    aget-object v1, p7, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/htc/camera/burst/BurstCameraBase;->onJpegTimeout(Lcom/htc/camera/Handle;I)Z

    .line 44
    :cond_0
    return-void
.end method
