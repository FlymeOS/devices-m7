.class abstract Lcom/android/server/power/HtcPowerSaver$Feature;
.super Ljava/lang/Object;
.source "HtcPowerSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/HtcPowerSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Feature"
.end annotation


# instance fields
.field private final DEFAULT_SWITCH_VALUE:Z

.field private final KEY_FEATURE_SWITCH:Ljava/lang/String;

.field private final KEY_FEATURE_SYSPROP:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mApplied:Z

.field public mFeatureId:I

.field final synthetic this$0:Lcom/android/server/power/HtcPowerSaver;


# direct methods
.method constructor <init>(Lcom/android/server/power/HtcPowerSaver;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 2
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "switchKey"    # Ljava/lang/String;
    .param p4, "switchValue"    # Z
    .param p5, "sysProp"    # Ljava/lang/String;
    .param p6, "featureId"    # I

    .prologue
    .line 1088
    iput-object p1, p0, Lcom/android/server/power/HtcPowerSaver$Feature;->this$0:Lcom/android/server/power/HtcPowerSaver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1077
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/HtcPowerSaver$Feature;->mApplied:Z

    .line 1085
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/power/HtcPowerSaver$Feature;->mFeatureId:I

    .line 1089
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HtcPowerSaver-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;

    .line 1090
    iput-object p3, p0, Lcom/android/server/power/HtcPowerSaver$Feature;->KEY_FEATURE_SWITCH:Ljava/lang/String;

    .line 1091
    iput-boolean p4, p0, Lcom/android/server/power/HtcPowerSaver$Feature;->DEFAULT_SWITCH_VALUE:Z

    .line 1092
    iput-object p5, p0, Lcom/android/server/power/HtcPowerSaver$Feature;->KEY_FEATURE_SYSPROP:Ljava/lang/String;

    .line 1093
    iput p6, p0, Lcom/android/server/power/HtcPowerSaver$Feature;->mFeatureId:I

    .line 1094
    invoke-direct {p0}, Lcom/android/server/power/HtcPowerSaver$Feature;->updateSystemProperties()V

    .line 1095
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/power/HtcPowerSaver$Feature;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcPowerSaver$Feature;

    .prologue
    .line 1075
    invoke-direct {p0}, Lcom/android/server/power/HtcPowerSaver$Feature;->apply()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/power/HtcPowerSaver$Feature;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/HtcPowerSaver$Feature;

    .prologue
    .line 1075
    invoke-direct {p0}, Lcom/android/server/power/HtcPowerSaver$Feature;->restore()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/power/HtcPowerSaver$Feature;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcPowerSaver$Feature;

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/android/server/power/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private apply()Z
    .locals 2

    .prologue
    .line 1123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/HtcPowerSaver$Feature;->mApplied:Z

    .line 1126
    invoke-virtual {p0}, Lcom/android/server/power/HtcPowerSaver$Feature;->saveSystemSettings()I

    .line 1128
    invoke-direct {p0}, Lcom/android/server/power/HtcPowerSaver$Feature;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1130
    invoke-virtual {p0}, Lcom/android/server/power/HtcPowerSaver$Feature;->applyPowerSaverSettings()I

    .line 1131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/HtcPowerSaver$Feature;->mApplied:Z

    .line 1132
    iget-object v0, p0, Lcom/android/server/power/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;

    const-string v1, "Applied."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    :goto_0
    invoke-direct {p0}, Lcom/android/server/power/HtcPowerSaver$Feature;->updateSystemProperties()V

    .line 1139
    iget-boolean v0, p0, Lcom/android/server/power/HtcPowerSaver$Feature;->mApplied:Z

    return v0

    .line 1134
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;

    const-string v1, "Not enabled. Skip applying."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isEnable()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v3, 0x1

    .line 1108
    const/4 v1, 0x0

    .line 1109
    .local v1, "value":I
    iget-object v2, p0, Lcom/android/server/power/HtcPowerSaver$Feature;->this$0:Lcom/android/server/power/HtcPowerSaver;

    # getter for: Lcom/android/server/power/HtcPowerSaver;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/power/HtcPowerSaver;->access$400(Lcom/android/server/power/HtcPowerSaver;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1111
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/android/server/power/HtcPowerSaver$Feature;->KEY_FEATURE_SWITCH:Ljava/lang/String;

    invoke-static {v0, v2, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1112
    if-ne v1, v5, :cond_2

    .line 1113
    iget-object v5, p0, Lcom/android/server/power/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isEnable: Failed to get value \""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p0, Lcom/android/server/power/HtcPowerSaver$Feature;->KEY_FEATURE_SWITCH:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\", use default = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v2, p0, Lcom/android/server/power/HtcPowerSaver$Feature;->DEFAULT_SWITCH_VALUE:Z

    if-eqz v2, :cond_0

    const-string v2, "true"

    :goto_0
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    iget-boolean v2, p0, Lcom/android/server/power/HtcPowerSaver$Feature;->DEFAULT_SWITCH_VALUE:Z

    if-eqz v2, :cond_1

    move v1, v3

    .line 1118
    :goto_1
    if-ne v1, v3, :cond_3

    :goto_2
    return v3

    .line 1113
    :cond_0
    const-string v2, "false"

    goto :goto_0

    :cond_1
    move v1, v4

    .line 1114
    goto :goto_1

    .line 1116
    :cond_2
    iget-object v2, p0, Lcom/android/server/power/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isEnable: Get value \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/power/HtcPowerSaver$Feature;->KEY_FEATURE_SWITCH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\"="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    move v3, v4

    .line 1118
    goto :goto_2
.end method

.method private restore()V
    .locals 2

    .prologue
    .line 1146
    iget-boolean v0, p0, Lcom/android/server/power/HtcPowerSaver$Feature;->mApplied:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/power/HtcPowerSaver$Feature;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/power/HtcPowerSaver$Feature;->this$0:Lcom/android/server/power/HtcPowerSaver;

    # getter for: Lcom/android/server/power/HtcPowerSaver;->mBootNotify:Z
    invoke-static {v0}, Lcom/android/server/power/HtcPowerSaver;->access$500(Lcom/android/server/power/HtcPowerSaver;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1147
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/HtcPowerSaver$Feature;->restoreSystemSettings()I

    .line 1148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/HtcPowerSaver$Feature;->mApplied:Z

    .line 1149
    iget-object v0, p0, Lcom/android/server/power/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;

    const-string v1, "Restored."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    :goto_0
    invoke-direct {p0}, Lcom/android/server/power/HtcPowerSaver$Feature;->updateSystemProperties()V

    .line 1154
    return-void

    .line 1151
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;

    const-string v1, "Not enabled. Skip restoring."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateSystemProperties()V
    .locals 4

    .prologue
    .line 1099
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/HtcPowerSaver$Feature;->KEY_FEATURE_SYSPROP:Ljava/lang/String;

    new-instance v2, Ljava/lang/Boolean;

    iget-boolean v3, p0, Lcom/android/server/power/HtcPowerSaver$Feature;->mApplied:Z

    invoke-direct {v2, v3}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1103
    :goto_0
    return-void

    .line 1100
    :catch_0
    move-exception v0

    .line 1101
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/power/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSystemProperties: Unable to set SystemProperties: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/HtcPowerSaver$Feature;->KEY_FEATURE_SYSPROP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected abstract applyPowerSaverSettings()I
.end method

.method protected abstract restoreSystemSettings()I
.end method

.method protected abstract saveSystemSettings()I
.end method
