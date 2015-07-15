.class final Landroid/mtp/MtpDatabase$MtpHandler;
.super Landroid/os/Handler;
.source "MtpDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MtpDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MtpHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MtpDatabase$MtpHandler$MtpScanData;
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/mtp/MtpDatabase;


# direct methods
.method public constructor <init>(Landroid/mtp/MtpDatabase;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1907
    iput-object p1, p0, Landroid/mtp/MtpDatabase$MtpHandler;->this$0:Landroid/mtp/MtpDatabase;

    .line 1908
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1909
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1925
    const-string v4, "MtpDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HandlerThread: SessionActive="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/mtp/MtpDatabase$MtpHandler;->this$0:Landroid/mtp/MtpDatabase;

    # getter for: Landroid/mtp/MtpDatabase;->mSessionActive:Z
    invoke-static {v6}, Landroid/mtp/MtpDatabase;->access$600(Landroid/mtp/MtpDatabase;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1926
    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1927
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/mtp/MtpDatabase$MtpHandler$MtpScanData;

    .line 1928
    .local v0, "aParams":Landroid/mtp/MtpDatabase$MtpHandler$MtpScanData;
    iget-object v3, v0, Landroid/mtp/MtpDatabase$MtpHandler$MtpScanData;->mPath:Ljava/lang/String;

    .line 1929
    .local v3, "path":Ljava/lang/String;
    iget v2, v0, Landroid/mtp/MtpDatabase$MtpHandler$MtpScanData;->mHandle:I

    .line 1930
    .local v2, "handle":I
    iget v1, v0, Landroid/mtp/MtpDatabase$MtpHandler$MtpScanData;->mFormat:I

    .line 1932
    .local v1, "format":I
    const-string v4, "MtpDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[USBF] HandlerThread: MediaScanner.scanMtpFile+, path="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    iget-object v4, p0, Landroid/mtp/MtpDatabase$MtpHandler;->this$0:Landroid/mtp/MtpDatabase;

    # getter for: Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;
    invoke-static {v4}, Landroid/mtp/MtpDatabase;->access$800(Landroid/mtp/MtpDatabase;)Landroid/media/MediaScanner;

    move-result-object v4

    iget-object v5, p0, Landroid/mtp/MtpDatabase$MtpHandler;->this$0:Landroid/mtp/MtpDatabase;

    # getter for: Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;
    invoke-static {v5}, Landroid/mtp/MtpDatabase;->access$700(Landroid/mtp/MtpDatabase;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5, v2, v1}, Landroid/media/MediaScanner;->scanMtpFile(Ljava/lang/String;Ljava/lang/String;II)V

    .line 1934
    const-string v4, "MtpDatabase"

    const-string v5, "[USBF] HandlerThread: MediaScanner.scanMtpFile-"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1939
    .end local v0    # "aParams":Landroid/mtp/MtpDatabase$MtpHandler$MtpScanData;
    .end local v1    # "format":I
    .end local v2    # "handle":I
    .end local v3    # "path":Ljava/lang/String;
    :goto_0
    return-void

    .line 1937
    :cond_0
    const-string v4, "MtpDatabase"

    const-string v5, "HandlerThread: Unhandled Message"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendMessageScan(Ljava/lang/String;II)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "handle"    # I
    .param p3, "format"    # I

    .prologue
    .line 1942
    new-instance v0, Landroid/mtp/MtpDatabase$MtpHandler$MtpScanData;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/mtp/MtpDatabase$MtpHandler$MtpScanData;-><init>(Landroid/mtp/MtpDatabase$MtpHandler;Ljava/lang/String;II)V

    .line 1944
    .local v0, "aParams":Landroid/mtp/MtpDatabase$MtpHandler$MtpScanData;
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/mtp/MtpDatabase$MtpHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1945
    .local v1, "sMsgScan":Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1946
    invoke-virtual {p0, v1}, Landroid/mtp/MtpDatabase$MtpHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1947
    return-void
.end method
