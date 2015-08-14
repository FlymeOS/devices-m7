.class public Lcom/android/nfc/NfcBackupAgent;
.super Landroid/app/backup/BackupAgentHelper;
.source "NfcBackupAgent.java"


# static fields
.field static final SHARED_PREFS_BACKUP_KEY:Ljava/lang/String; = "shared_prefs"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 4

    .prologue
    .line 31
    new-instance v0, Landroid/app/backup/SharedPreferencesBackupHelper;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "NfcServicePrefs"

    aput-object v3, v1, v2

    invoke-direct {v0, p0, v1}, Landroid/app/backup/SharedPreferencesBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 33
    .local v0, "helper":Landroid/app/backup/SharedPreferencesBackupHelper;
    const-string v1, "shared_prefs"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/NfcBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 34
    return-void
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 1
    .param p1, "data"    # Landroid/app/backup/BackupDataInput;
    .param p2, "appVersionCode"    # I
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-super {p0, p1, p2, p3}, Landroid/app/backup/BackupAgentHelper;->onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V

    .line 40
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->onRestore()V

    .line 41
    return-void
.end method
