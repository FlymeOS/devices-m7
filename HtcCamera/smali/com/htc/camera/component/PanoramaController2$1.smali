.class Lcom/htc/camera/component/PanoramaController2$1;
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
    .line 300
    iput-object p1, p0, Lcom/htc/camera/component/PanoramaController2$1;->this$0:Lcom/htc/camera/component/PanoramaController2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeout(Lcom/htc/camera/Handle;Ljava/lang/String;JJLjava/lang/Object;)V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2$1;->this$0:Lcom/htc/camera/component/PanoramaController2;

    check-cast p7, Ljava/lang/Integer;

    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    # invokes: Lcom/htc/camera/component/PanoramaController2;->onJpegCallbackTimeout(I)V
    invoke-static {v0, v1}, Lcom/htc/camera/component/PanoramaController2;->access$100(Lcom/htc/camera/component/PanoramaController2;I)V

    .line 305
    return-void
.end method
