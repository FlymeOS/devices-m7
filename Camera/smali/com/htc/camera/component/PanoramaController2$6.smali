.class Lcom/htc/camera/component/PanoramaController2$6;
.super Ljava/lang/Object;
.source "PanoramaController2.java"

# interfaces
.implements Lcom/htc/camera/k;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/PanoramaController2;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/PanoramaController2;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/htc/camera/component/PanoramaController2$6;->this$0:Lcom/htc/camera/component/PanoramaController2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLcom/htc/camera/CameraController;)V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2$6;->this$0:Lcom/htc/camera/component/PanoramaController2;

    invoke-virtual {v0, p1}, Lcom/htc/camera/component/PanoramaController2;->onPostviewCallback([B)V

    .line 344
    return-void
.end method
