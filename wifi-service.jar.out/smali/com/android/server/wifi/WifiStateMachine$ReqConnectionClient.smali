.class Lcom/android/server/wifi/WifiStateMachine$ReqConnectionClient;
.super Ljava/lang/Object;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReqConnectionClient"
.end annotation


# instance fields
.field private lastestReqTime:J

.field private macAddress:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;J)V
    .locals 1
    .param p2, "mac"    # Ljava/lang/String;
    .param p3, "time"    # J

    .prologue
    .line 713
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$ReqConnectionClient;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 714
    iput-object p2, p0, Lcom/android/server/wifi/WifiStateMachine$ReqConnectionClient;->macAddress:Ljava/lang/String;

    .line 715
    iput-wide p3, p0, Lcom/android/server/wifi/WifiStateMachine$ReqConnectionClient;->lastestReqTime:J

    .line 716
    return-void
.end method


# virtual methods
.method public getMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ReqConnectionClient;->macAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 723
    iget-wide v0, p0, Lcom/android/server/wifi/WifiStateMachine$ReqConnectionClient;->lastestReqTime:J

    return-wide v0
.end method

.method public setLastestReqTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 731
    iput-wide p1, p0, Lcom/android/server/wifi/WifiStateMachine$ReqConnectionClient;->lastestReqTime:J

    .line 732
    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 727
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$ReqConnectionClient;->macAddress:Ljava/lang/String;

    .line 728
    return-void
.end method
