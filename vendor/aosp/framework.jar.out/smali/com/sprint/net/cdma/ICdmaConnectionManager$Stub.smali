.class public abstract Lcom/sprint/net/cdma/ICdmaConnectionManager$Stub;
.super Landroid/os/Binder;
.source "ICdmaConnectionManager.java"

# interfaces
.implements Lcom/sprint/net/cdma/ICdmaConnectionManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/net/cdma/ICdmaConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/net/cdma/ICdmaConnectionManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sprint.net.cdma.ICdmaConnectionManager"

.field static final TRANSACTION_getCdma2000Info:I = 0x1

.field static final TRANSACTION_getCdmaRoamingIndicator:I = 0x6

.field static final TRANSACTION_getDeviceInfo:I = 0x2

.field static final TRANSACTION_getEvdoInfo:I = 0x3

.field static final TRANSACTION_getIpAddress:I = 0x5

.field static final TRANSACTION_getLastMipResponce:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "com.sprint.net.cdma.ICdmaConnectionManager"

    invoke-virtual {p0, p0, v0}, Lcom/sprint/net/cdma/ICdmaConnectionManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sprint/net/cdma/ICdmaConnectionManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 v0, 0x0

    .line 32
    :goto_0
    return-object v0

    .line 28
    :cond_0
    const-string v1, "com.sprint.net.cdma.ICdmaConnectionManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sprint/net/cdma/ICdmaConnectionManager;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/sprint/net/cdma/ICdmaConnectionManager;

    goto :goto_0

    .line 32
    :cond_1
    new-instance v0, Lcom/sprint/net/cdma/ICdmaConnectionManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/sprint/net/cdma/ICdmaConnectionManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 36
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
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 40
    sparse-switch p1, :sswitch_data_0

    .line 114
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 44
    :sswitch_0
    const-string v2, "com.sprint.net.cdma.ICdmaConnectionManager"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :sswitch_1
    const-string v2, "com.sprint.net.cdma.ICdmaConnectionManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lcom/sprint/net/cdma/ICdmaConnectionManager$Stub;->getCdma2000Info()Lcom/sprint/net/cdma/Cdma2000Info;

    move-result-object v0

    .line 51
    .local v0, "_result":Lcom/sprint/net/cdma/Cdma2000Info;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    invoke-virtual {v0, p3, v1}, Lcom/sprint/net/cdma/Cdma2000Info;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 63
    .end local v0    # "_result":Lcom/sprint/net/cdma/Cdma2000Info;
    :sswitch_2
    const-string v2, "com.sprint.net.cdma.ICdmaConnectionManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/sprint/net/cdma/ICdmaConnectionManager$Stub;->getDeviceInfo()Lcom/sprint/net/cdma/DeviceInfo;

    move-result-object v0

    .line 65
    .local v0, "_result":Lcom/sprint/net/cdma/DeviceInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    if-eqz v0, :cond_1

    .line 67
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    invoke-virtual {v0, p3, v1}, Lcom/sprint/net/cdma/DeviceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 77
    .end local v0    # "_result":Lcom/sprint/net/cdma/DeviceInfo;
    :sswitch_3
    const-string v2, "com.sprint.net.cdma.ICdmaConnectionManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/sprint/net/cdma/ICdmaConnectionManager$Stub;->getEvdoInfo()Lcom/sprint/net/cdma/EvdoInfo;

    move-result-object v0

    .line 79
    .local v0, "_result":Lcom/sprint/net/cdma/EvdoInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    if-eqz v0, :cond_2

    .line 81
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    invoke-virtual {v0, p3, v1}, Lcom/sprint/net/cdma/EvdoInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 85
    :cond_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 91
    .end local v0    # "_result":Lcom/sprint/net/cdma/EvdoInfo;
    :sswitch_4
    const-string v2, "com.sprint.net.cdma.ICdmaConnectionManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/sprint/net/cdma/ICdmaConnectionManager$Stub;->getLastMipResponce()I

    move-result v0

    .line 93
    .local v0, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 99
    .end local v0    # "_result":I
    :sswitch_5
    const-string v2, "com.sprint.net.cdma.ICdmaConnectionManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/sprint/net/cdma/ICdmaConnectionManager$Stub;->getIpAddress()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 107
    .end local v0    # "_result":Ljava/lang/String;
    :sswitch_6
    const-string v2, "com.sprint.net.cdma.ICdmaConnectionManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/sprint/net/cdma/ICdmaConnectionManager$Stub;->getCdmaRoamingIndicator()I

    move-result v0

    .line 109
    .local v0, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 40
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
