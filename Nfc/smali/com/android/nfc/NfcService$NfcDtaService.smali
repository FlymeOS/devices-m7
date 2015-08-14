.class final Lcom/android/nfc/NfcService$NfcDtaService;
.super Lcom/nxp/nfc/INfcDta$Stub;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NfcDtaService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .locals 0

    .prologue
    .line 3409
    iput-object p1, p0, Lcom/android/nfc/NfcService$NfcDtaService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Lcom/nxp/nfc/INfcDta$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public snepDtaCmd(Ljava/lang/String;Ljava/lang/String;IIII)Z
    .locals 4
    .param p1, "cmdType"    # Ljava/lang/String;
    .param p2, "serviceName"    # Ljava/lang/String;
    .param p3, "serviceSap"    # I
    .param p4, "miu"    # I
    .param p5, "rwSize"    # I
    .param p6, "testCaseId"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3413
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcDtaService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 3414
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3435
    :cond_0
    :goto_0
    return v0

    .line 3416
    :cond_1
    const-string v2, "enabledta"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3417
    sput-boolean v1, Lcom/android/nfc/NfcService;->mIsDtaMode:Z

    .line 3418
    const-string v0, "NfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Is DTA Mode Enabled ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/nfc/NfcService;->mIsDtaMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v0, v1

    .line 3435
    goto :goto_0

    .line 3419
    :cond_2
    const-string v2, "enableserver"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3420
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3422
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcDtaService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/nfc/P2pLinkManager;->enableExtDtaSnepServer(Ljava/lang/String;III)V

    goto :goto_1

    .line 3423
    :cond_3
    const-string v2, "disableserver"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3424
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcDtaService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v0}, Lcom/android/nfc/P2pLinkManager;->disableExtDtaSnepServer()V

    goto :goto_1

    .line 3425
    :cond_4
    const-string v2, "enableclient"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3426
    if-eqz p6, :cond_0

    .line 3428
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcDtaService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v0, p2, p4, p5, p6}, Lcom/android/nfc/P2pLinkManager;->enableDtaSnepClient(Ljava/lang/String;III)V

    goto :goto_1

    .line 3429
    :cond_5
    const-string v2, "disableclient"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3430
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcDtaService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v0}, Lcom/android/nfc/P2pLinkManager;->disableDtaSnepClient()V

    goto :goto_1

    .line 3432
    :cond_6
    const-string v1, "NfcService"

    const-string v2, "Unkown DTA Command"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
