.class Lcom/android/nfc/NfcService$ScreenObserver;
.super Landroid/os/FileObserver;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method public constructor <init>(Lcom/android/nfc/NfcService;)V
    .locals 2

    .prologue
    .line 5560
    iput-object p1, p0, Lcom/android/nfc/NfcService$ScreenObserver;->this$0:Lcom/android/nfc/NfcService;

    .line 5561
    iget-object v0, p1, Lcom/android/nfc/NfcService;->mScreenStateFile:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 5562
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 5
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 5566
    iget-object v1, p0, Lcom/android/nfc/NfcService$ScreenObserver;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$1200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/ScreenStateHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/nfc/ScreenStateHelper;->checkScreenState()I

    move-result v0

    .line 5567
    .local v0, "screenState":I
    new-instance v1, Lcom/android/nfc/NfcService$ApplyRoutingTask;

    iget-object v2, p0, Lcom/android/nfc/NfcService$ScreenObserver;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v1, v2}, Lcom/android/nfc/NfcService$ApplyRoutingTask;-><init>(Lcom/android/nfc/NfcService;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/nfc/NfcService$ApplyRoutingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 5568
    const-string v1, "NfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ScreenObserver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/nfc/ScreenStateHelper;->screenStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5569
    return-void
.end method
