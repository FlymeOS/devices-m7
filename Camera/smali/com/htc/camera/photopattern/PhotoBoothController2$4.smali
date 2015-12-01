.class Lcom/htc/camera/photopattern/PhotoBoothController2$4;
.super Ljava/lang/Object;
.source "PhotoBoothController2.java"

# interfaces
.implements Lcom/htc/camera/k;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/photopattern/PhotoBoothController2;


# direct methods
.method constructor <init>(Lcom/htc/camera/photopattern/PhotoBoothController2;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2$4;->this$0:Lcom/htc/camera/photopattern/PhotoBoothController2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLcom/htc/camera/CameraController;)V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2$4;->this$0:Lcom/htc/camera/photopattern/PhotoBoothController2;

    invoke-virtual {v0, p1}, Lcom/htc/camera/photopattern/PhotoBoothController2;->onPostviewCallback([B)V

    .line 306
    return-void
.end method
