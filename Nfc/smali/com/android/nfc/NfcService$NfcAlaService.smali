.class final Lcom/android/nfc/NfcService$NfcAlaService;
.super Lcom/nxp/nfc/INfcAla$Stub;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NfcAlaService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .locals 0

    .prologue
    .line 3439
    iput-object p1, p0, Lcom/android/nfc/NfcService$NfcAlaService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Lcom/nxp/nfc/INfcAla$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public appletLoadApplet(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "choice"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3442
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAlaService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->getCallingAppPkg(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 3443
    .local v0, "pkg_name":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->CreateSHA(Ljava/lang/String;)[B

    move-result-object v1

    .line 3444
    .local v1, "sha_data":[B
    const-string v2, "NfcService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sha_data len : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3445
    if-eqz v1, :cond_0

    .line 3447
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAlaService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcAla:Lcom/android/nfc/dhimpl/NativeNfcAla;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$2500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/dhimpl/NativeNfcAla;

    move-result-object v2

    invoke-virtual {v2, p2, v1}, Lcom/android/nfc/dhimpl/NativeNfcAla;->doAppletLoadApplet(Ljava/lang/String;[B)I

    move-result v2

    .line 3450
    :goto_0
    return v2

    :cond_0
    const/16 v2, 0xff

    goto :goto_0
.end method

.method public getKeyCertificate()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3463
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAlaService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcAla:Lcom/android/nfc/dhimpl/NativeNfcAla;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$2500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/dhimpl/NativeNfcAla;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/dhimpl/NativeNfcAla;->GetCertificateKey()[B

    move-result-object v0

    return-object v0
.end method

.method public getListofApplets(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "name"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3453
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAlaService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcAla:Lcom/android/nfc/dhimpl/NativeNfcAla;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$2500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/dhimpl/NativeNfcAla;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/nfc/dhimpl/NativeNfcAla;->GetAppletsList([Ljava/lang/String;)I

    move-result v0

    .line 3454
    .local v0, "cnt":I
    const-string v2, "NfcService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GetListofApplets count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3455
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3456
    const-string v2, "NfcService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GetListofApplets "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p2, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3455
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3459
    :cond_0
    return v0
.end method
