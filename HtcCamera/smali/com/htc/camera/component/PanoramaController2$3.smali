.class Lcom/htc/camera/component/PanoramaController2$3;
.super Ljava/lang/Object;
.source "PanoramaController2.java"

# interfaces
.implements Lcom/htc/camera/debug/b;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/PanoramaController2;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/PanoramaController2;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/htc/camera/component/PanoramaController2$3;->this$0:Lcom/htc/camera/component/PanoramaController2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeout(Lcom/htc/camera/Handle;Ljava/lang/String;JJLjava/lang/Object;)V
    .locals 2

    .prologue
    .line 320
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Creating thumbnail timeout"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
