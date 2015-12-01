.class public final Lcom/htc/camera/io/h;
.super Lcom/htc/camera/component/t;
.source "MediaFileWriterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/component/t",
        "<",
        "Lcom/htc/camera/io/MediaFileWriter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "Media File Writer"

    invoke-direct {p0, v0}, Lcom/htc/camera/component/t;-><init>(Ljava/lang/String;)V

    .line 11
    return-void
.end method


# virtual methods
.method public a(Lcom/htc/camera/CameraThread;)Lcom/htc/camera/io/MediaFileWriter;
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/htc/camera/io/MediaFileWriter;

    invoke-direct {v0, p1}, Lcom/htc/camera/io/MediaFileWriter;-><init>(Lcom/htc/camera/CameraThread;)V

    return-object v0
.end method

.method public synthetic b(Lcom/htc/camera/CameraThread;)Lcom/htc/camera/component/Component;
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/htc/camera/io/h;->a(Lcom/htc/camera/CameraThread;)Lcom/htc/camera/io/MediaFileWriter;

    move-result-object v0

    return-object v0
.end method
