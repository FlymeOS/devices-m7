.class public abstract Lcom/sprint/net/lte/IConnectionManager$Stub;
.super Landroid/os/Binder;
.source "IConnectionManager.java"

# interfaces
.implements Lcom/sprint/net/lte/IConnectionManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/net/lte/IConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/net/lte/IConnectionManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sprint.net.lte.IConnectionManager"

.field static final TRANSACTION_getConnectionInfo:I = 0x2

.field static final TRANSACTION_getDeviceInfo:I = 0x3

.field static final TRANSACTION_getModulationDownlink:I = 0x4

.field static final TRANSACTION_getModulationUplink:I = 0x5

.field static final TRANSACTION_getState:I = 0x6

.field static final TRANSACTION_getStatus:I = 0x7

.field static final TRANSACTION_test:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.sprint.net.lte.IConnectionManager"

    invoke-virtual {p0, p0, v0}, Lcom/sprint/net/lte/IConnectionManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sprint/net/lte/IConnectionManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.sprint.net.lte.IConnectionManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sprint/net/lte/IConnectionManager;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/sprint/net/lte/IConnectionManager;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/sprint/net/lte/IConnectionManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/sprint/net/lte/IConnectionManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 139
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 42
    :sswitch_0
    const-string v3, "com.sprint.net.lte.IConnectionManager"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v3, "com.sprint.net.lte.IConnectionManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    .line 50
    .local v0, "_arg0":Z
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sprint/net/lte/IConnectionManager$Stub;->test(Z)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 56
    .end local v0    # "_arg0":Z
    :sswitch_2
    const-string v3, "com.sprint.net.lte.IConnectionManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/sprint/net/lte/IConnectionManager$Stub;->getConnectionInfo()Lcom/sprint/net/lte/ConnectionInfo;

    move-result-object v1

    .line 58
    .local v1, "_result":Lcom/sprint/net/lte/ConnectionInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    if-eqz v1, :cond_1

    .line 60
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    invoke-virtual {v1, p3, v2}, Lcom/sprint/net/lte/ConnectionInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 70
    .end local v1    # "_result":Lcom/sprint/net/lte/ConnectionInfo;
    :sswitch_3
    const-string v3, "com.sprint.net.lte.IConnectionManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/sprint/net/lte/IConnectionManager$Stub;->getDeviceInfo()Lcom/sprint/net/lte/DeviceInfo;

    move-result-object v1

    .line 72
    .local v1, "_result":Lcom/sprint/net/lte/DeviceInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    if-eqz v1, :cond_2

    .line 74
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    invoke-virtual {v1, p3, v2}, Lcom/sprint/net/lte/DeviceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 78
    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 84
    .end local v1    # "_result":Lcom/sprint/net/lte/DeviceInfo;
    :sswitch_4
    const-string v3, "com.sprint.net.lte.IConnectionManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/sprint/net/lte/IConnectionManager$Stub;->getModulationDownlink()Lcom/sprint/net/lte/BaseStationInfo$Modulation;

    move-result-object v1

    .line 86
    .local v1, "_result":Lcom/sprint/net/lte/BaseStationInfo$Modulation;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz v1, :cond_3

    .line 88
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    invoke-virtual {v1, p3, v2}, Lcom/sprint/net/lte/BaseStationInfo$Modulation;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 92
    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 98
    .end local v1    # "_result":Lcom/sprint/net/lte/BaseStationInfo$Modulation;
    :sswitch_5
    const-string v3, "com.sprint.net.lte.IConnectionManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/sprint/net/lte/IConnectionManager$Stub;->getModulationUplink()Lcom/sprint/net/lte/BaseStationInfo$Modulation;

    move-result-object v1

    .line 100
    .restart local v1    # "_result":Lcom/sprint/net/lte/BaseStationInfo$Modulation;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    if-eqz v1, :cond_4

    .line 102
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    invoke-virtual {v1, p3, v2}, Lcom/sprint/net/lte/BaseStationInfo$Modulation;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 106
    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 112
    .end local v1    # "_result":Lcom/sprint/net/lte/BaseStationInfo$Modulation;
    :sswitch_6
    const-string v3, "com.sprint.net.lte.IConnectionManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/sprint/net/lte/IConnectionManager$Stub;->getState()Lcom/sprint/net/lte/ConnectionManager$State;

    move-result-object v1

    .line 114
    .local v1, "_result":Lcom/sprint/net/lte/ConnectionManager$State;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    if-eqz v1, :cond_5

    .line 116
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    invoke-virtual {v1, p3, v2}, Lcom/sprint/net/lte/ConnectionManager$State;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 120
    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 126
    .end local v1    # "_result":Lcom/sprint/net/lte/ConnectionManager$State;
    :sswitch_7
    const-string v3, "com.sprint.net.lte.IConnectionManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/sprint/net/lte/IConnectionManager$Stub;->getStatus()Lcom/sprint/net/lte/ConnectionManager$Status;

    move-result-object v1

    .line 128
    .local v1, "_result":Lcom/sprint/net/lte/ConnectionManager$Status;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    if-eqz v1, :cond_6

    .line 130
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    invoke-virtual {v1, p3, v2}, Lcom/sprint/net/lte/ConnectionManager$Status;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 134
    :cond_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
