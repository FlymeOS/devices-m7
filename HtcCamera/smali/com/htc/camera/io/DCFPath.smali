.class public Lcom/htc/camera/io/DCFPath;
.super Lcom/htc/camera/io/Path;
.source "DCFPath.java"


# instance fields
.field public final directoryNumber:Lcom/htc/camera/io/FileCounter;

.field public final fileNumber:Lcom/htc/camera/io/FileCounter;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/htc/camera/io/FileCounter;Lcom/htc/camera/io/FileCounter;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/io/Path;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iput-object p3, p0, Lcom/htc/camera/io/DCFPath;->directoryNumber:Lcom/htc/camera/io/FileCounter;

    .line 18
    iput-object p4, p0, Lcom/htc/camera/io/DCFPath;->fileNumber:Lcom/htc/camera/io/FileCounter;

    .line 19
    return-void
.end method


# virtual methods
.method public changeExtension(Ljava/lang/String;)Lcom/htc/camera/io/DCFPath;
    .locals 5

    .prologue
    .line 27
    new-instance v0, Lcom/htc/camera/io/DCFPath;

    iget-object v1, p0, Lcom/htc/camera/io/DCFPath;->directoryPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/camera/io/DCFPath;->fileName:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/htc/camera/io/DCFPath;->changeExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/io/DCFPath;->directoryNumber:Lcom/htc/camera/io/FileCounter;

    iget-object v4, p0, Lcom/htc/camera/io/DCFPath;->fileNumber:Lcom/htc/camera/io/FileCounter;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/camera/io/DCFPath;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/htc/camera/io/FileCounter;Lcom/htc/camera/io/FileCounter;)V

    return-object v0
.end method

.method public bridge synthetic changeExtension(Ljava/lang/String;)Lcom/htc/camera/io/Path;
    .locals 1

    .prologue
    .line 3
    invoke-virtual {p0, p1}, Lcom/htc/camera/io/DCFPath;->changeExtension(Ljava/lang/String;)Lcom/htc/camera/io/DCFPath;

    move-result-object v0

    return-object v0
.end method
