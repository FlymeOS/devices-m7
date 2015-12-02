.class interface abstract Lcom/htc/lib1/settings/provider/HtcISettingsSystem;
.super Ljava/lang/Object;
.source "HtcISettingsSystem.java"


# static fields
.field public static final DEFAULT_CALENDAR_NOTIFICATION_URI:Landroid/net/Uri;

.field public static final DEFAULT_MSG_NOTIFICATION_URI:Landroid/net/Uri;

.field public static final PROFILE_PREFIX:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 160
    const-string v0, "cal_notification"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/lib1/settings/provider/HtcISettingsSystem;->DEFAULT_CALENDAR_NOTIFICATION_URI:Landroid/net/Uri;

    .line 179
    const-string v0, "msg_notification"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/lib1/settings/provider/HtcISettingsSystem;->DEFAULT_MSG_NOTIFICATION_URI:Landroid/net/Uri;

    .line 999
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Handset_"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "MutiMedia_"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/lib1/settings/provider/HtcISettingsSystem;->PROFILE_PREFIX:[Ljava/lang/String;

    return-void
.end method
