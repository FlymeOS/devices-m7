.class final Lcom/android/nfc/NfcService$NxpNfcAdapterService;
.super Lcom/nxp/nfc/INxpNfcAdapter$Stub;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NxpNfcAdapterService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .locals 0

    .prologue
    .line 2746
    iput-object p1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public DefaultRouteSet(IZZZ)V
    .locals 6
    .param p1, "routeLoc"    # I
    .param p2, "fullPower"    # Z
    .param p3, "lowPower"    # Z
    .param p4, "noPower"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 2998
    const/4 v1, 0x0

    .line 2999
    .local v1, "protoRouteEntry":I
    iget-object v4, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v4}, Lcom/android/nfc/NfcService;->GetDefaultRouteLoc()I

    move-result v0

    .line 3000
    .local v0, "oldRoute":I
    and-int/lit8 v4, p1, 0x3

    if-ne v4, v5, :cond_1

    const/16 v1, 0x8

    .line 3001
    :goto_0
    if-eqz p2, :cond_3

    move v4, v5

    :goto_1
    if-eqz p3, :cond_4

    :goto_2
    or-int/2addr v4, v2

    if-eqz p4, :cond_5

    const/4 v2, 0x4

    :goto_3
    or-int/2addr v2, v4

    or-int/2addr v1, v2

    .line 3002
    iget-object v2, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v4, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    # setter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v2, v4}, Lcom/android/nfc/NfcService;->access$402(Lcom/android/nfc/NfcService;Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;

    .line 3003
    iget-object v2, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "PREF_SET_DEFAULT_ROUTE_ID"

    invoke-interface {v2, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3004
    iget-object v2, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3005
    iget-object v2, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iput-boolean v5, v2, Lcom/android/nfc/NfcService;->mIsRouteForced:Z

    .line 3006
    if-eq p1, v0, :cond_0

    .line 3007
    iget-object v2, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mAidRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$2400(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/AidRoutingManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/nfc/cardemulation/AidRoutingManager;->onNfccRoutingTableCleared()V

    .line 3008
    iget-object v2, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onRoutingTableChanged()V

    .line 3010
    :cond_0
    iget-object v2, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iput-boolean v3, v2, Lcom/android/nfc/NfcService;->mIsRouteForced:Z

    .line 3011
    iget-object v2, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2}, Lcom/android/nfc/NfcService;->commitRouting()V

    .line 3012
    return-void

    .line 3000
    :cond_1
    and-int/lit8 v4, p1, 0x3

    if-ne v4, v2, :cond_2

    const/16 v1, 0x10

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    move v4, v3

    .line 3001
    goto :goto_1

    :cond_4
    move v2, v3

    goto :goto_2

    :cond_5
    move v2, v3

    goto :goto_3
.end method

.method public MifareCLTRouteSet(IZZZ)V
    .locals 5
    .param p1, "routeLoc"    # I
    .param p2, "fullPower"    # Z
    .param p3, "lowPower"    # Z
    .param p4, "noPower"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 3017
    const/4 v0, 0x0

    .line 3018
    .local v0, "techRouteEntry":I
    and-int/lit8 v4, p1, 0x3

    if-ne v4, v3, :cond_1

    const/16 v0, 0x8

    .line 3019
    :goto_0
    if-eqz p2, :cond_3

    :goto_1
    if-eqz p3, :cond_4

    :goto_2
    or-int/2addr v2, v3

    if-eqz p4, :cond_0

    const/4 v1, 0x4

    :cond_0
    or-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 3020
    or-int/lit8 v0, v0, 0x20

    .line 3021
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    # setter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v1, v2}, Lcom/android/nfc/NfcService;->access$402(Lcom/android/nfc/NfcService;Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;

    .line 3022
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "PREF_MIFARE_CLT_ROUTE_ID"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3023
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3024
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->commitRouting()V

    .line 3025
    return-void

    .line 3018
    :cond_1
    and-int/lit8 v4, p1, 0x3

    if-ne v4, v2, :cond_2

    const/16 v0, 0x10

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v3, v1

    .line 3019
    goto :goto_1

    :cond_4
    move v2, v1

    goto :goto_2
.end method

.method public MifareDesfireRouteSet(IZZZ)V
    .locals 5
    .param p1, "routeLoc"    # I
    .param p2, "fullPower"    # Z
    .param p3, "lowPower"    # Z
    .param p4, "noPower"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 2985
    const/4 v0, 0x0

    .line 2986
    .local v0, "protoRouteEntry":I
    and-int/lit8 v4, p1, 0x3

    if-ne v4, v3, :cond_1

    const/16 v0, 0x8

    .line 2987
    :goto_0
    if-eqz p2, :cond_3

    :goto_1
    if-eqz p3, :cond_4

    :goto_2
    or-int/2addr v2, v3

    if-eqz p4, :cond_0

    const/4 v1, 0x4

    :cond_0
    or-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 2988
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    # setter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v1, v2}, Lcom/android/nfc/NfcService;->access$402(Lcom/android/nfc/NfcService;Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;

    .line 2989
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "PREF_MIFARE_DESFIRE_PROTO_ROUTE_ID"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2990
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2991
    const-string v1, "NfcService"

    const-string v2, "MifareDesfireRouteSet function in"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2992
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->commitRouting()V

    .line 2993
    return-void

    .line 2986
    :cond_1
    and-int/lit8 v4, p1, 0x3

    if-ne v4, v2, :cond_2

    const/16 v0, 0x10

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v3, v1

    .line 2987
    goto :goto_1

    :cond_4
    move v2, v1

    goto :goto_2
.end method

.method public changeDefaultRoute(I)Z
    .locals 4
    .param p1, "defaultRoute"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2760
    const/4 v0, 0x1

    .line 2761
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->getDefaultRoute()I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 2762
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "default_route_id"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2763
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2764
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/nfc/NfcService;->mIsRouteForced:Z

    .line 2765
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->clearRouting()V

    .line 2766
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mAidRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$2400(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/AidRoutingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/nfc/cardemulation/AidRoutingManager;->onNfccRoutingTableCleared()V

    .line 2767
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onRoutingTableChanged()V

    .line 2768
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/nfc/NfcService;->mIsRouteForced:Z

    .line 2770
    const-string v1, "NfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set default route "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2771
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/nfc/DeviceHost;->setDefaultAidRoute(I)Z

    .line 2773
    :cond_0
    return v0
.end method

.method public deselectSecureElement(Ljava/lang/String;)I
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2924
    iget-object v3, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v3, p1}, Lcom/android/nfc/NfcService;->enforceNfcSeAdminPerm(Ljava/lang/String;)V

    .line 2926
    iget-object v3, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v3}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2927
    const/16 v2, -0x11

    .line 2955
    :goto_0
    return v2

    .line 2930
    :cond_0
    iget-object v3, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mSelectedSeId:I
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$800(Lcom/android/nfc/NfcService;)I

    move-result v3

    if-nez v3, :cond_1

    .line 2931
    const/16 v2, -0x14

    goto :goto_0

    .line 2934
    :cond_1
    iget-object v3, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mSelectedSeId:I
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$800(Lcom/android/nfc/NfcService;)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    .line 2935
    iget-object v3, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v3

    iget-object v4, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mSelectedSeId:I
    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$800(Lcom/android/nfc/NfcService;)I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/nfc/DeviceHost;->doDeselectSecureElement(I)V

    .line 2947
    :cond_2
    iget-object v3, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # setter for: Lcom/android/nfc/NfcService;->mNfcSecureElementState:Z
    invoke-static {v3, v2}, Lcom/android/nfc/NfcService;->access$702(Lcom/android/nfc/NfcService;Z)Z

    .line 2948
    iget-object v3, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # setter for: Lcom/android/nfc/NfcService;->mSelectedSeId:I
    invoke-static {v3, v2}, Lcom/android/nfc/NfcService;->access$802(Lcom/android/nfc/NfcService;I)I

    .line 2951
    iget-object v3, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "secure_element_on"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2952
    iget-object v3, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "secure_element_id"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2953
    iget-object v3, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 2939
    :cond_3
    iget-object v3, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/nfc/DeviceHost;->doGetSecureElementList()[I

    move-result-object v0

    .line 2941
    .local v0, "Se_list":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 2942
    iget-object v3, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v3

    aget v4, v0, v1

    invoke-interface {v3, v4}, Lcom/android/nfc/DeviceHost;->doDeselectSecureElement(I)V

    .line 2941
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public doConfigureDesfireRoute(I)V
    .locals 2
    .param p1, "eeId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2971
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2972
    const-string v0, "NfcService"

    const-string v1, "NFC is not enabled...Desfire routing cannot be configured"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2974
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost;->doConfigureDesfireRoute(I)V

    .line 2975
    return-void
.end method

.method public getHtcDriverOption()I
    .locals 1

    .prologue
    .line 3030
    const/4 v0, 0x0

    return v0
.end method

.method public getNfcAccessExtrasInterface(Ljava/lang/String;)Lcom/nxp/nfc/INfcAccessExtras;
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 2778
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcService;->enforceNfcSccAdminPerm(Ljava/lang/String;)V

    .line 2779
    const-string v0, "NfcService"

    const-string v1, "getNfcAccessExtrasInterface1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2780
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNfcAccessExtrasService:Lcom/android/nfc/NfcService$NfcAccessExtrasService;

    if-nez v0, :cond_0

    .line 2781
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    new-instance v1, Lcom/android/nfc/NfcService$NfcAccessExtrasService;

    iget-object v2, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v1, v2}, Lcom/android/nfc/NfcService$NfcAccessExtrasService;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v1, v0, Lcom/android/nfc/NfcService;->mNfcAccessExtrasService:Lcom/android/nfc/NfcService$NfcAccessExtrasService;

    .line 2783
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNfcAccessExtrasService:Lcom/android/nfc/NfcService$NfcAccessExtrasService;

    return-object v0
.end method

.method public getNfcAlaInterface()Lcom/nxp/nfc/INfcAla;
    .locals 3

    .prologue
    .line 2793
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 2795
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mAlaService:Lcom/android/nfc/NfcService$NfcAlaService;

    if-nez v0, :cond_0

    .line 2796
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    new-instance v1, Lcom/android/nfc/NfcService$NfcAlaService;

    iget-object v2, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v1, v2}, Lcom/android/nfc/NfcService$NfcAlaService;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v1, v0, Lcom/android/nfc/NfcService;->mAlaService:Lcom/android/nfc/NfcService$NfcAlaService;

    .line 2799
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mAlaService:Lcom/android/nfc/NfcService$NfcAlaService;

    return-object v0
.end method

.method public getNfcDtaInterface()Lcom/nxp/nfc/INfcDta;
    .locals 3

    .prologue
    .line 2804
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 2806
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mDtaService:Lcom/android/nfc/NfcService$NfcDtaService;

    if-nez v0, :cond_0

    .line 2807
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    new-instance v1, Lcom/android/nfc/NfcService$NfcDtaService;

    iget-object v2, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v1, v2}, Lcom/android/nfc/NfcService$NfcDtaService;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v1, v0, Lcom/android/nfc/NfcService;->mDtaService:Lcom/android/nfc/NfcService$NfcDtaService;

    .line 2810
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mDtaService:Lcom/android/nfc/NfcService$NfcDtaService;

    return-object v0
.end method

.method public getNfcSecureElementInterface()Lcom/nxp/nfc/INfcSecureElement;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2749
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 2751
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mSecureElementService:Lcom/android/nfc/NfcService$NfcSecureElementService;

    if-nez v0, :cond_0

    .line 2752
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    new-instance v1, Lcom/android/nfc/NfcService$NfcSecureElementService;

    iget-object v2, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v1, v2}, Lcom/android/nfc/NfcService$NfcSecureElementService;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v1, v0, Lcom/android/nfc/NfcService;->mSecureElementService:Lcom/android/nfc/NfcService$NfcSecureElementService;

    .line 2755
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mSecureElementService:Lcom/android/nfc/NfcService$NfcSecureElementService;

    return-object v0
.end method

.method public getNfcVzwInterface()Lcom/nxp/nfc/INfcVzw;
    .locals 3

    .prologue
    .line 2815
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 2817
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mVzwService:Lcom/android/nfc/NfcService$NfcVzwService;

    if-nez v0, :cond_0

    .line 2818
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    new-instance v1, Lcom/android/nfc/NfcService$NfcVzwService;

    iget-object v2, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v1, v2}, Lcom/android/nfc/NfcService$NfcVzwService;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v1, v0, Lcom/android/nfc/NfcService;->mVzwService:Lcom/android/nfc/NfcService$NfcVzwService;

    .line 2821
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mVzwService:Lcom/android/nfc/NfcService$NfcVzwService;

    return-object v0
.end method

.method public getNxpNfcAdapterExtrasInterface()Lcom/nxp/nfc/INxpNfcAdapterExtras;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2788
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNxpExtrasService:Lcom/android/nfc/NfcService$NxpNfcAdapterExtrasService;

    return-object v0
.end method

.method public getSecureElementList(Ljava/lang/String;)[I
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2840
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, p1}, Lcom/android/nfc/NfcService;->enforceNfcSeAdminPerm(Ljava/lang/String;)V

    .line 2841
    const/4 v0, 0x0

    .line 2842
    .local v0, "list":[I
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2843
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->doGetSecureElementList()[I

    move-result-object v0

    .line 2845
    :cond_0
    return-object v0
.end method

.method public getSelectedSecureElement(Ljava/lang/String;)I
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2964
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcService;->enforceNfcSeAdminPerm(Ljava/lang/String;)V

    .line 2965
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mSelectedSeId:I
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$800(Lcom/android/nfc/NfcService;)I

    move-result v0

    return v0
.end method

.method public selectSecureElement(Ljava/lang/String;I)I
    .locals 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "seId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 2855
    iget-object v4, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v4, p1}, Lcom/android/nfc/NfcService;->enforceNfcSeAdminPerm(Ljava/lang/String;)V

    .line 2857
    iget-object v4, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v4}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2858
    const/16 v4, -0x11

    .line 2915
    :goto_0
    return v4

    .line 2861
    :cond_0
    iget-object v4, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mSelectedSeId:I
    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$800(Lcom/android/nfc/NfcService;)I

    move-result v4

    if-ne v4, p2, :cond_1

    .line 2862
    const/16 v4, -0x12

    goto :goto_0

    .line 2865
    :cond_1
    iget-object v4, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mSelectedSeId:I
    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$800(Lcom/android/nfc/NfcService;)I

    move-result v4

    if-eqz v4, :cond_2

    .line 2866
    const/16 v4, -0x13

    goto :goto_0

    .line 2869
    :cond_2
    iget-object v4, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # setter for: Lcom/android/nfc/NfcService;->mSelectedSeId:I
    invoke-static {v4, p2}, Lcom/android/nfc/NfcService;->access$802(Lcom/android/nfc/NfcService;I)I

    .line 2870
    const/4 v4, 0x3

    if-eq p2, v4, :cond_4

    .line 2871
    iget-object v4, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v4

    iget-object v5, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mSelectedSeId:I
    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$800(Lcom/android/nfc/NfcService;)I

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/nfc/DeviceHost;->doSelectSecureElement(I)V

    .line 2909
    :cond_3
    iget-object v4, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "secure_element_on"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2910
    iget-object v4, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "secure_element_id"

    iget-object v6, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mSelectedSeId:I
    invoke-static {v6}, Lcom/android/nfc/NfcService;->access$800(Lcom/android/nfc/NfcService;)I

    move-result v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2911
    iget-object v4, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2913
    iget-object v4, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # setter for: Lcom/android/nfc/NfcService;->mNfcSecureElementState:Z
    invoke-static {v4, v7}, Lcom/android/nfc/NfcService;->access$702(Lcom/android/nfc/NfcService;Z)Z

    .line 2915
    const/4 v4, 0x0

    goto :goto_0

    .line 2874
    :cond_4
    iget-object v4, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/nfc/DeviceHost;->doGetSecureElementList()[I

    move-result-object v0

    .line 2876
    .local v0, "Se_list":[I
    array-length v4, v0

    if-le v4, v7, :cond_3

    .line 2877
    invoke-static {}, Lcom/android/nfc/HtcUtils;->isNxpNciCodebase()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2878
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, v0

    if-ge v2, v4, :cond_3

    .line 2879
    iget-object v4, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v4

    aget v5, v0, v2

    invoke-interface {v4, v5}, Lcom/android/nfc/DeviceHost;->doSelectSecureElement(I)V

    .line 2882
    const-wide/16 v4, 0xc8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2878
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2883
    :catch_0
    move-exception v1

    .line 2884
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 2887
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "i":I
    :cond_5
    invoke-static {}, Lcom/android/nfc/HtcUtils;->isNxpCodebase()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2892
    const/4 v3, 0x0

    .line 2893
    .local v3, "isSMXPresent":Z
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    array-length v4, v0

    if-ge v2, v4, :cond_7

    .line 2894
    aget v4, v0, v2

    if-ne v4, v7, :cond_6

    .line 2895
    const/4 v3, 0x1

    .line 2893
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2899
    :cond_7
    if-ne v3, v7, :cond_3

    .line 2901
    const/4 v2, 0x0

    :goto_4
    array-length v4, v0

    if-ge v2, v4, :cond_3

    .line 2902
    iget-object v4, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v4

    aget v5, v0, v2

    invoke-interface {v4, v5}, Lcom/android/nfc/DeviceHost;->doSelectSecureElement(I)V

    .line 2901
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method public setEmvCoPollProfile(ZI)I
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "route"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2979
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/nfc/DeviceHost;->setEmvCoPollProfile(ZI)I

    move-result v0

    return v0
.end method

.method public storeSePreference(I)V
    .locals 3
    .param p1, "seId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2826
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 2828
    const-string v0, "NfcService"

    const-string v1, "SE Preference stored"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2829
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "secure_element_on"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2830
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "secure_element_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2831
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2832
    return-void
.end method
