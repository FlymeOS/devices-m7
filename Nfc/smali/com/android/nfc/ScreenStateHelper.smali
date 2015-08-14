.class public final Lcom/android/nfc/ScreenStateHelper;
.super Ljava/lang/Object;
.source "ScreenStateHelper.java"


# static fields
.field static final DBG:Z

.field public static final SCREEN_STATE_OFF:I = 0x1

.field public static final SCREEN_STATE_ON_LOCKED:I = 0x2

.field public static final SCREEN_STATE_ON_UNLOCKED:I = 0x3

.field static final SCREEN_STATE_UNKNOWN:I = 0x0

.field static final TAG:Ljava/lang/String; = "NfcService"


# instance fields
.field private final mKeyguardManager:Landroid/app/KeyguardManager;

.field private final mPowerManager:Landroid/os/PowerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    invoke-static {}, Lcom/htc/htcjavaflag/HtcBuildFlag;->getHtc_DEBUG_flag()Z

    move-result v0

    sput-boolean v0, Lcom/android/nfc/ScreenStateHelper;->DBG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/nfc/ScreenStateHelper;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 27
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/nfc/ScreenStateHelper;->mPowerManager:Landroid/os/PowerManager;

    .line 28
    return-void
.end method

.method static screenStateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "screenState"    # I

    .prologue
    .line 46
    packed-switch p0, :pswitch_data_0

    .line 54
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 48
    :pswitch_0
    const-string v0, "OFF"

    goto :goto_0

    .line 50
    :pswitch_1
    const-string v0, "ON_LOCKED"

    goto :goto_0

    .line 52
    :pswitch_2
    const-string v0, "ON_UNLOCKED"

    goto :goto_0

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method checkScreenState()I
    .locals 3

    .prologue
    .line 32
    sget-boolean v0, Lcom/android/nfc/ScreenStateHelper;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NfcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkScreenState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/ScreenStateHelper;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isActualScreenOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/ScreenStateHelper;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/ScreenStateHelper;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isActualScreenOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 34
    const/4 v0, 0x1

    .line 38
    :goto_0
    return v0

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/ScreenStateHelper;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 36
    const/4 v0, 0x2

    goto :goto_0

    .line 38
    :cond_2
    const/4 v0, 0x3

    goto :goto_0
.end method
