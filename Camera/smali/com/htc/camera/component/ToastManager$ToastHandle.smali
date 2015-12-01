.class final Lcom/htc/camera/component/ToastManager$ToastHandle;
.super Lcom/htc/camera/SessionHandle;
.source "ToastManager.java"


# instance fields
.field public volatile bubbleToastHandle:Lcom/htc/camera/Handle;

.field public final message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 56
    const-string v0, "Toast"

    invoke-direct {p0, v0}, Lcom/htc/camera/SessionHandle;-><init>(Ljava/lang/String;)V

    .line 57
    iput-object p1, p0, Lcom/htc/camera/component/ToastManager$ToastHandle;->message:Ljava/lang/String;

    .line 58
    return-void
.end method
