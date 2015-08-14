.class final Lcom/android/nfc/NfcService$NfcVzwService;
.super Lcom/nxp/nfc/INfcVzw$Stub;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NfcVzwService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .locals 0

    .prologue
    .line 3482
    iput-object p1, p0, Lcom/android/nfc/NfcService$NfcVzwService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Lcom/nxp/nfc/INfcVzw$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public setScreenOffCondition(Z)V
    .locals 3
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 3485
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcVzwService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 3486
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcVzwService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$1300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/nfc/NfcService$NfcServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 3487
    .local v0, "msg":Landroid/os/Message;
    const/16 v2, 0xd4

    iput v2, v0, Landroid/os/Message;->what:I

    .line 3488
    if-ne v1, p1, :cond_0

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3489
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcVzwService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$1300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3491
    return-void

    .line 3488
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setVzwAidList([Lcom/vzw/nfc/RouteEntry;)Z
    .locals 7
    .param p1, "entries"    # [Lcom/vzw/nfc/RouteEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3496
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcVzwService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 3497
    const-string v2, "NfcService"

    const-string v3, "setVzwAidList enter"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3498
    const-string v2, "NfcService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setVzwAidList  entries length ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3499
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcVzwService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mAidRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$2400(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/AidRoutingManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/nfc/cardemulation/AidRoutingManager;->ClearVzwCache()V

    .line 3500
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 3501
    aget-object v1, p1, v0

    .line 3502
    .local v1, "routeEntry":Lcom/vzw/nfc/RouteEntry;
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcVzwService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mAidRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$2400(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/AidRoutingManager;

    move-result-object v2

    invoke-virtual {v1}, Lcom/vzw/nfc/RouteEntry;->getAid()[B

    move-result-object v3

    invoke-virtual {v1}, Lcom/vzw/nfc/RouteEntry;->getLocation()I

    move-result v4

    invoke-virtual {v1}, Lcom/vzw/nfc/RouteEntry;->getPowerState()I

    move-result v5

    invoke-virtual {v1}, Lcom/vzw/nfc/RouteEntry;->isAllowed()Z

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/nfc/cardemulation/AidRoutingManager;->UpdateVzwCache([BIIZ)Z

    .line 3500
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3512
    .end local v1    # "routeEntry":Lcom/vzw/nfc/RouteEntry;
    :cond_0
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcVzwService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mAidRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$2400(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/AidRoutingManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/nfc/cardemulation/AidRoutingManager;->onNfccRoutingTableCleared()V

    .line 3513
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcVzwService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onRoutingTableChanged()V

    .line 3514
    const/4 v2, 0x1

    return v2
.end method
