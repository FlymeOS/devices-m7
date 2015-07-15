.class public Lcom/android/internal/telephony/HtcUiccPowerManager;
.super Ljava/lang/Object;
.source "HtcUiccPowerManager.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field public static sMe:Lcom/android/internal/telephony/HtcUiccPowerManager;


# instance fields
.field private final DBG:Z

.field private isAirplaneModeEnabled:Z

.field private isCard1Checked:Z

.field private isCard1Exist:Z

.field private isCard2Checked:Z

.field private isCard2Exist:Z

.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPhone:[Lcom/android/internal/telephony/PhoneBase;

.field private mProxyPhones:[Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "HtcUiccPowerManager"

    sput-object v0, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/HtcUiccPowerManager;->sMe:Lcom/android/internal/telephony/HtcUiccPowerManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneProxy"    # [Lcom/android/internal/telephony/Phone;
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v2, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->DBG:Z

    .line 37
    iput-boolean v2, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isAirplaneModeEnabled:Z

    .line 39
    iput-boolean v2, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard1Exist:Z

    .line 40
    iput-boolean v2, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard2Exist:Z

    .line 41
    iput-boolean v2, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard1Checked:Z

    .line 42
    iput-boolean v2, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard2Checked:Z

    .line 43
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/telephony/PhoneBase;

    iput-object v1, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    .line 45
    new-instance v1, Lcom/android/internal/telephony/HtcUiccPowerManager$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/HtcUiccPowerManager$1;-><init>(Lcom/android/internal/telephony/HtcUiccPowerManager;)V

    iput-object v1, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 66
    sget-object v1, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    const-string v2, "Constructor HtcSimPowerManager"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    sput-object p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->sMe:Lcom/android/internal/telephony/HtcUiccPowerManager;

    .line 68
    iput-object p1, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mProxyPhones:[Lcom/android/internal/telephony/Phone;

    .line 70
    iput-object p3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 71
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 72
    iget-object v2, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v1, p2, v0

    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    aput-object v1, v2, v0

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcUiccPowerManager;->addIntentFilter()V

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/HtcUiccPowerManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcUiccPowerManager;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isAirplaneModeEnabled:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/HtcUiccPowerManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcUiccPowerManager;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isAirplaneModeEnabled:Z

    return p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private addIntentFilter()V
    .locals 3

    .prologue
    .line 82
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 83
    .local v0, "mIntentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 85
    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/HtcUiccPowerManager;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/android/internal/telephony/HtcUiccPowerManager;->sMe:Lcom/android/internal/telephony/HtcUiccPowerManager;

    return-object v0
.end method

.method private updateCardSetup(ZI)V
    .locals 8
    .param p1, "isPresent"    # Z
    .param p2, "slot"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 113
    if-nez p2, :cond_3

    iget-boolean v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard1Checked:Z

    if-nez v3, :cond_3

    .line 114
    iput-boolean v7, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard1Checked:Z

    .line 115
    iput-boolean p1, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard1Exist:Z

    .line 121
    :cond_0
    :goto_0
    sget-object v3, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCardSetup slot="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isPresent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isCard1Checked="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard1Checked:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isCard2Checked="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard2Checked:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isSupportNoSimPowerOFF()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 127
    iget-object v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v6

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v7

    if-nez v3, :cond_4

    .line 128
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    const-string v4, "mPhone1 == null or mPhone2 == null"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_2
    :goto_1
    return-void

    .line 116
    :cond_3
    if-ne p2, v7, :cond_0

    iget-boolean v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard2Checked:Z

    if-nez v3, :cond_0

    .line 117
    iput-boolean v7, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard2Checked:Z

    .line 118
    iput-boolean p1, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard2Exist:Z

    goto :goto_0

    .line 132
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 133
    .local v2, "sp":Landroid/content/SharedPreferences;
    const-string v3, "slot1_card_enabled"

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 134
    .local v0, "mCardState1":Z
    const-string v3, "slot2_card_enabled"

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 136
    .local v1, "mCardState2":Z
    if-eqz v0, :cond_5

    if-nez v1, :cond_6

    .line 137
    :cond_5
    sget-object v3, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nosimpoweroff mCardState1:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,mCardState2:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iput-boolean v6, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard1Checked:Z

    .line 139
    iput-boolean v6, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard2Checked:Z

    goto :goto_1

    .line 140
    :cond_6
    iget-object v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v6

    iget-boolean v3, v3, Lcom/android/internal/telephony/PhoneBase;->mRadioOnDueToECC2:Z

    if-eqz v3, :cond_7

    .line 141
    sget-object v3, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    const-string v4, "nosimpoweroff SlotGsmEcc"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v6

    iput-boolean v6, v3, Lcom/android/internal/telephony/PhoneBase;->mRadioOnDueToECC2:Z

    .line 143
    iput-boolean v6, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard1Checked:Z

    .line 144
    iput-boolean v6, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard2Checked:Z

    goto :goto_1

    .line 145
    :cond_7
    iget-object v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v7

    iget-boolean v3, v3, Lcom/android/internal/telephony/PhoneBase;->mRadioOnDueToECC2:Z

    if-eqz v3, :cond_8

    .line 146
    sget-object v3, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    const-string v4, "nosimpoweroff SlotSubGsmEcc"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v7

    iput-boolean v6, v3, Lcom/android/internal/telephony/PhoneBase;->mRadioOnDueToECC2:Z

    .line 148
    iput-boolean v6, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard1Checked:Z

    .line 149
    iput-boolean v6, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard2Checked:Z

    goto :goto_1

    .line 151
    :cond_8
    iget-boolean v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard1Checked:Z

    if-eqz v3, :cond_10

    iget-boolean v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard2Checked:Z

    if-eqz v3, :cond_10

    .line 152
    iget-boolean v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard1Exist:Z

    if-eqz v3, :cond_9

    iget-boolean v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard2Exist:Z

    if-eqz v3, :cond_a

    :cond_9
    iget-boolean v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard1Exist:Z

    if-nez v3, :cond_e

    iget-boolean v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard2Exist:Z

    if-nez v3, :cond_e

    .line 153
    :cond_a
    iget-object v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v7

    iget-boolean v3, v3, Lcom/android/internal/telephony/PhoneBase;->mRadioOnDueToECC2:Z

    if-nez v3, :cond_d

    .line 154
    iget-boolean v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard1Exist:Z

    if-nez v3, :cond_b

    iget-boolean v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard2Exist:Z

    if-nez v3, :cond_b

    .line 155
    iget-object v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v6

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v3

    if-nez v3, :cond_b

    .line 156
    sget-object v3, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    const-string v4, "nosimpoweroff <<set slot1 ON>>"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v6

    invoke-virtual {v3, v7}, Lcom/android/internal/telephony/PhoneBase;->setRadioPower(Z)V

    .line 160
    :cond_b
    iget-object v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v7

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 161
    sget-object v3, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    const-string v4, "nosimpoweroff <<set slot2 OFF>>"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v7

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/PhoneBase;->setRadioPower(Z)V

    .line 180
    :cond_c
    :goto_2
    iput-boolean v6, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard1Checked:Z

    .line 181
    iput-boolean v6, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard2Checked:Z

    .line 182
    sget-object v3, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    const-string v4, "nosimpoweroff, both UICC card inserted. "

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 166
    :cond_d
    iget-object v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v7

    iput-boolean v6, v3, Lcom/android/internal/telephony/PhoneBase;->mRadioOnDueToECC2:Z

    goto :goto_2

    .line 169
    :cond_e
    iget-boolean v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard1Exist:Z

    if-nez v3, :cond_c

    iget-boolean v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard2Exist:Z

    if-eqz v3, :cond_c

    .line 171
    iget-object v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v6

    iget-boolean v3, v3, Lcom/android/internal/telephony/PhoneBase;->mRadioOnDueToECC2:Z

    if-nez v3, :cond_f

    .line 172
    iget-object v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v6

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 173
    sget-object v3, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    const-string v4, "nosimpoweroff <<set slot1 OFF>>"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v6

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/PhoneBase;->setRadioPower(Z)V

    goto :goto_2

    .line 177
    :cond_f
    iget-object v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v6

    iput-boolean v6, v3, Lcom/android/internal/telephony/PhoneBase;->mRadioOnDueToECC2:Z

    goto :goto_2

    .line 184
    :cond_10
    sget-object v3, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nosimpoweroff do nothing isCard1Checked="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard1Checked:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isCard2Checked="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard2Checked:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method


# virtual methods
.method public clearCardSetup(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    const/4 v3, 0x0

    .line 93
    sget-object v0, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearCardSetup enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    if-eqz p1, :cond_0

    .line 96
    iput-boolean v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard1Checked:Z

    .line 97
    iput-boolean v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard2Checked:Z

    .line 98
    iput-boolean v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard1Exist:Z

    .line 99
    iput-boolean v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard2Exist:Z

    .line 101
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 88
    sget-object v0, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    const-string v1, "[dispose]"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 90
    return-void
.end method

.method public setUiccCardState(ZI)V
    .locals 3
    .param p1, "isPresent"    # Z
    .param p2, "slot"    # I

    .prologue
    .line 104
    sget-object v0, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIccCardState slot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isPresent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isAirplaneModeEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isAirplaneModeEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-boolean v0, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isAirplaneModeEnabled:Z

    if-nez v0, :cond_0

    .line 107
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/HtcUiccPowerManager;->updateCardSetup(ZI)V

    .line 109
    :cond_0
    return-void
.end method

.method public simHotSwapTrigger()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 192
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isSupportNoSimPowerOFF()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 193
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v3

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v2

    if-nez v4, :cond_2

    .line 194
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    const-string v3, "mPhone1 == null || mPhone2 == null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_1
    :goto_0
    return-void

    .line 197
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v4

    if-nez v4, :cond_4

    .line 198
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    const-string v3, "getUiccCard() == null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 203
    :cond_4
    const-string v4, "sys.shutdown.hibernate.mode"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 204
    .local v1, "hibernate":Z
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_6

    move v0, v2

    .line 207
    .local v0, "airplane":Z
    :goto_1
    if-nez v1, :cond_5

    if-eqz v0, :cond_7

    .line 208
    :cond_5
    sget-object v2, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nosimpoweroff hibernate = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " airplane = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "airplane":Z
    :cond_6
    move v0, v3

    .line 204
    goto :goto_1

    .line 212
    .restart local v0    # "airplane":Z
    :cond_7
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/internal/telephony/uicc/UiccCard;->isHotSwapInserted:Z

    if-nez v4, :cond_9

    .line 213
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v4, v5, :cond_8

    .line 214
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 215
    sget-object v4, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    const-string v5, "nosimpoweroff <<set slot2 OFF>>"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v2

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/PhoneBase;->setRadioPower(Z)V

    .line 219
    :cond_8
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v4

    if-nez v4, :cond_1

    .line 220
    sget-object v4, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    const-string v5, "nosimpoweroff <<set slot1 ON>>"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v4, v3

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/PhoneBase;->setRadioPower(Z)V

    goto/16 :goto_0

    .line 224
    :cond_9
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/internal/telephony/uicc/UiccCard;->isHotSwapInserted:Z

    if-eqz v4, :cond_b

    .line 225
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v4

    if-nez v4, :cond_a

    .line 226
    sget-object v4, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    const-string v5, "nosimpoweroff <<set slot1 ON>>"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v3

    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/PhoneBase;->setRadioPower(Z)V

    .line 238
    :cond_a
    :goto_2
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/internal/telephony/uicc/UiccCard;->isHotSwapInserted:Z

    if-eqz v4, :cond_c

    .line 239
    iget-object v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v3

    if-nez v3, :cond_1

    .line 240
    sget-object v3, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    const-string v4, "nosimpoweroff <<set slot2 ON>>"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v2

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/PhoneBase;->setRadioPower(Z)V

    goto/16 :goto_0

    .line 230
    :cond_b
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v4, v5, :cond_a

    .line 231
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 232
    sget-object v4, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    const-string v5, "nosimpoweroff <<set slot1 OFF>>"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v3

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/PhoneBase;->setRadioPower(Z)V

    goto :goto_2

    .line 245
    :cond_c
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v4, v5, :cond_1

    .line 246
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 247
    sget-object v4, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    const-string v5, "nosimpoweroff <<set slot2 OFF>>"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v4, v2

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/PhoneBase;->setRadioPower(Z)V

    goto/16 :goto_0
.end method
