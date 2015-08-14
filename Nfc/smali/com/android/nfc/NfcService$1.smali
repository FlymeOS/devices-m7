.class Lcom/android/nfc/NfcService$1;
.super Ljava/lang/Object;
.source "NfcService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/NfcService;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .locals 0

    .prologue
    .line 1095
    iput-object p1, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 1097
    monitor-enter p0

    :try_start_0
    const-string v0, "NfcService"

    const-string v1, "Access Control onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    iget-object v0, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {p2}, Lorg/simalliance/openmobileapi/service/security/IAccessControlSvc$Stub;->asInterface(Landroid/os/IBinder;)Lorg/simalliance/openmobileapi/service/security/IAccessControlSvc;

    move-result-object v1

    # setter for: Lcom/android/nfc/NfcService;->accessControlSvc:Lorg/simalliance/openmobileapi/service/security/IAccessControlSvc;
    invoke-static {v0, v1}, Lcom/android/nfc/NfcService;->access$002(Lcom/android/nfc/NfcService;Lorg/simalliance/openmobileapi/service/security/IAccessControlSvc;)Lorg/simalliance/openmobileapi/service/security/IAccessControlSvc;

    .line 1100
    invoke-static {}, Lcom/android/nfc/HtcUtils;->isNxpNciCodebase()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/nfc/HtcUtils;->isVzwSku()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 1102
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->accessControlSvc:Lorg/simalliance/openmobileapi/service/security/IAccessControlSvc;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$000(Lcom/android/nfc/NfcService;)Lorg/simalliance/openmobileapi/service/security/IAccessControlSvc;

    move-result-object v0

    invoke-interface {v0}, Lorg/simalliance/openmobileapi/service/security/IAccessControlSvc;->reloadUiccRules()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1105
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1097
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1103
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 1108
    const-string v0, "NfcService"

    const-string v1, "Access Control onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    iget-object v0, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    const/4 v1, 0x0

    # setter for: Lcom/android/nfc/NfcService;->accessControlSvc:Lorg/simalliance/openmobileapi/service/security/IAccessControlSvc;
    invoke-static {v0, v1}, Lcom/android/nfc/NfcService;->access$002(Lcom/android/nfc/NfcService;Lorg/simalliance/openmobileapi/service/security/IAccessControlSvc;)Lorg/simalliance/openmobileapi/service/security/IAccessControlSvc;

    .line 1110
    return-void
.end method
