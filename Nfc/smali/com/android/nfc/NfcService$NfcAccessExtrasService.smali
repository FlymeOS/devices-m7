.class final Lcom/android/nfc/NfcService$NfcAccessExtrasService;
.super Lcom/nxp/nfc/INfcAccessExtras$Stub;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NfcAccessExtrasService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .locals 0

    .prologue
    .line 3467
    iput-object p1, p0, Lcom/android/nfc/NfcService$NfcAccessExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Lcom/nxp/nfc/INfcAccessExtras$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public checkChannelAdminAccess(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3469
    const/4 v1, 0x1

    .line 3472
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAccessExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2, p1}, Lcom/android/nfc/NfcService;->enforceNfcSccAdminPerm(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3478
    :goto_0
    return v1

    .line 3473
    :catch_0
    move-exception v0

    .line 3474
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3475
    const/4 v1, 0x0

    goto :goto_0
.end method
