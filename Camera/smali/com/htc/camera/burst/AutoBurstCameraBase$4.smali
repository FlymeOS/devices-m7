.class Lcom/htc/camera/burst/AutoBurstCameraBase$4;
.super Ljava/lang/Object;
.source "AutoBurstCameraBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/burst/AutoBurstCameraBase;


# direct methods
.method constructor <init>(Lcom/htc/camera/burst/AutoBurstCameraBase;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lcom/htc/camera/burst/AutoBurstCameraBase$4;->this$0:Lcom/htc/camera/burst/AutoBurstCameraBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/htc/camera/burst/AutoBurstCameraBase$4;->this$0:Lcom/htc/camera/burst/AutoBurstCameraBase;

    invoke-virtual {v0}, Lcom/htc/camera/burst/AutoBurstCameraBase;->onBurstDoneReceived()V

    .line 334
    return-void
.end method
