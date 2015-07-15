.class public Lcom/android/server/wifi/WifiHtcNetworkSelection$WirelessDisplayManager;
.super Ljava/lang/Object;
.source "WifiHtcNetworkSelection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiHtcNetworkSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WirelessDisplayManager"
.end annotation


# static fields
.field public static final EXTRA_MIRROR_DISPLAY_STATUS:Ljava/lang/String; = "mirror_display_status"

.field public static final MIRROR_DISPLAY_STATE_CHANGED_ACTION:Ljava/lang/String; = "com.htc.MIRROR_DISPLAY_STATE_CHANGED"


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiHtcNetworkSelection;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiHtcNetworkSelection;)V
    .locals 0

    .prologue
    .line 1165
    iput-object p1, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection$WirelessDisplayManager;->this$0:Lcom/android/server/wifi/WifiHtcNetworkSelection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMirrorDisplayStatus()Z
    .locals 1

    .prologue
    .line 1170
    const/4 v0, 0x0

    return v0
.end method
